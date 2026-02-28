class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.109.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.0/eca-native-macos-aarch64.zip"
      sha256 "a3d80528e772ac7c2a10a65c5cbb7c5934e32cd6a00533b93cfdcacf5620d7d1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.0/eca-native-macos-amd64.zip"
      sha256 "1d076ab15e25d4df233a6ef63c84a0ba647fb41589cc64d2ecc973530c565de6"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.0/eca-native-linux-amd64.zip"
      sha256 "25683965a1fc53310825b1b99825d00e5828323bb846d627e8397ea37602cc8f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.109.0/eca-native-static-linux-amd64.zip"
      sha256 "48a54d250257cefa8852357911ade64f527cc26206ae5ea8776641917d61f72a"
    end
  end

  def install
    bin.install "eca"
  end
end

