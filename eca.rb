class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.129.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.1/eca-native-macos-aarch64.zip"
      sha256 "4bed74324e8a78e92fbd35a56415ca8414a4a2e04add0d7b77657e7bd42d7edd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.1/eca-native-macos-amd64.zip"
      sha256 "c90d367e5b3244589ec3699276587f06079b8ce06f9f2b646c9fc1b79169e92d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.1/eca-native-linux-amd64.zip"
      sha256 "cedaa6e4366f6745f379a08dae3688ff7e506be678455db0030be90e3de8b578"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.129.1/eca-native-static-linux-amd64.zip"
      sha256 "9ac93721fe3ff506d5867edb40fbf69583228ddec093cdd17f50cfc5aeea2893"
    end
  end

  def install
    bin.install "eca"
  end
end

