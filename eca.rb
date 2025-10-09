class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.66.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.66.1/eca-native-macos-aarch64.zip"
      sha256 "963f5efe4997afdb636643bf299088f7c2f81098b7876a218ed2b07ad67d1c90"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.66.1/eca-native-macos-amd64.zip"
      sha256 "bc07960411451032e780b4e156d9e3b89af48c681c4e3379c7dc76771fc0f5fe"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.66.1/eca-native-linux-amd64.zip"
      sha256 "3292182c70d5716ee3aba21ffc8c4f6d38d9c827cfe75e8d9c819b4885f932d3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.66.1/eca-native-static-linux-amd64.zip"
      sha256 "be391e6724b31933a82bf46440fd704bfe33cf40292e8223e1565d9798fd0b46"
    end
  end

  def install
    bin.install "eca"
  end
end

