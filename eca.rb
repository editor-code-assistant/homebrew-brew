class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.50.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.0/eca-native-macos-aarch64.zip"
      sha256 "2145247996518857d1564f46ed79df5b054d93e696dafa10745921d8bde477bb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.0/eca-native-macos-amd64.zip"
      sha256 "3b9058c41cda729b2945c4204e036a78ebe12d629257c02e1a425327378164d8"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.0/eca-native-linux-amd64.zip"
      sha256 "e0a481bff3094d8e1ad1ad52603f991b6d8503a4bf061b0042611e4e595edccd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.50.0/eca-native-static-linux-amd64.zip"
      sha256 "cc869b8f44f38ac9c369d7f0c7f490b601aee33cceda78cdbaf21bb487ad5966"
    end
  end

  def install
    bin.install "eca"
  end
end

