class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.71.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.1/eca-native-macos-aarch64.zip"
      sha256 "70c034d50bb7b734b14eed86cacf5f46ca1066bfe4cd80a1eabd4f1fc7fcdaa5"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.1/eca-native-macos-amd64.zip"
      sha256 "0ae6e95f12044c746c24f590300775401240f3380a62e2fdaf45748514eda29b"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.1/eca-native-linux-amd64.zip"
      sha256 "2a07e139facca9ea8f55e553b9352fd9c5fb928d2140f24689510ead65a24adf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.71.1/eca-native-static-linux-amd64.zip"
      sha256 "afe9f3b09cfcdb59f459fb941783fb113161880db79bf27ead9240ba82de1fae"
    end
  end

  def install
    bin.install "eca"
  end
end

