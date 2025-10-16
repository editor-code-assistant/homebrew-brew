class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.69.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.69.0/eca-native-macos-aarch64.zip"
      sha256 "279512dae0999075eeb22bb02ed785ba4fac92ae067259f494bd81d48bd02455"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.69.0/eca-native-macos-amd64.zip"
      sha256 "f7298e67b56bc3bb42678ef8416d363cff79a501a209eaa7fd2b92716dfd8660"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.69.0/eca-native-linux-amd64.zip"
      sha256 "b19e4421f34fcbb486ceeda0933a5f6fbceac0e115ca1459955fdf748617acaf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.69.0/eca-native-static-linux-amd64.zip"
      sha256 "6cc703a6b75f4aa8aaf27a5e0b0315724d5c305764d26df86d66d24bf163bc6e"
    end
  end

  def install
    bin.install "eca"
  end
end

