class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.97.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.0/eca-native-macos-aarch64.zip"
      sha256 "19961786265faf40977bbf3d24f1afa9b9e88537b3bffeff90cc5534a6c06f8f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.0/eca-native-macos-amd64.zip"
      sha256 "0fe0d32d0d4cf43a2095d0fd5ec5a542364efde96398930c55a7a60dc5ef5eb4"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.0/eca-native-linux-amd64.zip"
      sha256 "b4fc6f200143f10b730d26d47716b92321b35728d3365f2310e7d995aaeb0f9f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.0/eca-native-static-linux-amd64.zip"
      sha256 "e8e6dfddbff0b647411cfab92d0f24f3f8f3f6399a95573a5c565ea4475f70e1"
    end
  end

  def install
    bin.install "eca"
  end
end

