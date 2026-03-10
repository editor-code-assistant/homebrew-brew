class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.111.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.111.0/eca-native-macos-aarch64.zip"
      sha256 "ef400b8e134e67032bfa8a6969d2698361655400b3cd56ccfc08683e8e3a23e3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.111.0/eca-native-macos-amd64.zip"
      sha256 "80790aa577d4d109233e06c72c6205fcaeff168d328e8f15127a6dbb254c0d26"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.111.0/eca-native-linux-amd64.zip"
      sha256 "df2323da219b096515055687118886313b1c311b1dc3d77f690741c70929f004"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.111.0/eca-native-static-linux-amd64.zip"
      sha256 "fe5b104e0c622b8cd4d458410e5bd631a3b907313d90d6c1a9dae3e125f6fe8d"
    end
  end

  def install
    bin.install "eca"
  end
end

