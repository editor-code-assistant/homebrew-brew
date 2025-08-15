class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.26.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.3/eca-native-macos-aarch64.zip"
      sha256 "21bab785e9d336c1410c0eb8f624006109537fc27e4f2103b56566144cbf30f3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.3/eca-native-macos-amd64.zip"
      sha256 "fa97838b89d693148565e337cd330fbf653d73749401b1cce1bf1759db61b6fe"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.3/eca-native-linux-amd64.zip"
      sha256 "4c6d56d51896e6266e61aa3c765d39027f0e5965d48be82706bd3c69bc147840"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.26.3/eca-native-static-linux-amd64.zip"
      sha256 "0d26232de41228f6a918cb36455a46339aeb646e2a4cde3d9cf08fc638b3bdea"
    end
  end

  def install
    bin.install "eca"
  end
end

