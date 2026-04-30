class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.131.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.131.1/eca-native-macos-aarch64.zip"
      sha256 "28c640223a9db107ac251dd10b3477b70ca8603472c050d6fdc9d91c9ec48f86"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.131.1/eca-native-macos-amd64.zip"
      sha256 "efc6813e390d468b4a9d031ae8ba30763a15df8dacc60730df614a9f9d50e929"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.131.1/eca-native-linux-amd64.zip"
      sha256 "0a06bd207f87b3fdc7409e05813e2316b66763c4434da04c1993627ddce48d7f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.131.1/eca-native-static-linux-amd64.zip"
      sha256 "14ba5a78d4c99f76859e83b94506169f35ddbeeeee092a193af95b26ef176e4f"
    end
  end

  def install
    bin.install "eca"
  end
end

