class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.54.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.4/eca-native-macos-aarch64.zip"
      sha256 "d526e65adc8891d65806dd4247767cd108638962c5f62fc349e23467f47807c6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.4/eca-native-macos-amd64.zip"
      sha256 "07f8a3a308c54f366dc3bb468955066597dd6132a51ebd83a0d62f269dc620df"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.4/eca-native-linux-amd64.zip"
      sha256 "8a50c509fd18e7876261f1d67b351bf2031d052d0b685a60ac98dea572733df2"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.54.4/eca-native-static-linux-amd64.zip"
      sha256 "9c8ae5b9dcea8a8f7600f1e6433ad8fbab0a9156192d316a6c906f25e45405c9"
    end
  end

  def install
    bin.install "eca"
  end
end

