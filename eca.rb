class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.132.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.132.0/eca-native-macos-aarch64.zip"
      sha256 "8e73d72d9aa75848e996a82dee655f0dbf095bd34dd70f64471ba36466c35cfc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.132.0/eca-native-macos-amd64.zip"
      sha256 "dadc9723d9a08c935ce0752dc6dfb6403f8f9f5a49c63adc4196fb0d748d8f95"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.132.0/eca-native-linux-amd64.zip"
      sha256 "9360262032868e97d9cbf8589fc31871725e1b38f23287d3133c88ff80ababa9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.132.0/eca-native-static-linux-amd64.zip"
      sha256 "7e7908d82d81323ec133e2c296eae44d4e1eed49b1bfa1dd6cf60c91a3877d75"
    end
  end

  def install
    bin.install "eca"
  end
end

