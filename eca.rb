class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.149.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.149.1/eca-native-macos-aarch64.zip"
      sha256 "b7156ede7b94d9cd9edc07cb6d6031c9f2c7f815fa0f19324ebec6a193021ed4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.149.1/eca-native-macos-amd64.zip"
      sha256 "d5fe91ea100be8acd97df012e00ad87ea151be4b8d1cb86d4b2f99cd54377115"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.149.1/eca-native-linux-amd64.zip"
      sha256 "301f210ad25842017d2f5efd719f4719d30fbd2b93106a931bb1abdebf1ff250"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.149.1/eca-native-static-linux-amd64.zip"
      sha256 "7dbb0585fd36796776e3948f8f172ef67e18836d66f745279957a73e7c1cdbcd"
    end
  end

  def install
    bin.install "eca"
  end
end

