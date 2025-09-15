class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.54.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.3/eca-native-macos-aarch64.zip"
      sha256 "7b50af8628ec5ed5a41eeff13b5a84316c8cff28f976a17f2d68943b9f22fed5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.3/eca-native-macos-amd64.zip"
      sha256 "4d2b3d9abc6802a97d578615bc62ba5648b3ec92761d5917e1586925fc5eff61"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.3/eca-native-linux-amd64.zip"
      sha256 "952891ec9c85587d60a0aa58266cf8cd7d68bd4dc867f637a932f504b498a0be"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.3/eca-native-static-linux-amd64.zip"
      sha256 "e2a9bb51b75098b274fe0bac70779e469c1114c9d2a8906ae2e15e7a0acc2a7f"
    end
  end

  def install
    bin.install "eca"
  end
end

