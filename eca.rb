class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.140.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.140.0/eca-native-macos-aarch64.zip"
      sha256 "1607f4770bc1c13c7476c0c8e91a949daf1cf4e2444bc58411dd4ece44e8a079"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.140.0/eca-native-macos-amd64.zip"
      sha256 "736732c2e56a19823b004563c54b60fae72755b3eae87f0d3bc02af63f182f07"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.140.0/eca-native-linux-amd64.zip"
      sha256 "2cb81b6c8309b1a9bd5ee6a2c954f178b791317a0593aafea711743ccd59bc02"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.140.0/eca-native-static-linux-amd64.zip"
      sha256 "1b773644621487f99f58bea84ce24a61b9f2eb545fa77b1f11ceda204c37716e"
    end
  end

  def install
    bin.install "eca"
  end
end

