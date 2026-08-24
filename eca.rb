class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.156.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.156.0/eca-native-macos-aarch64.zip"
      sha256 "023e1d917eff81097bb291bdee1c352df6e9734b220e9275e39ed28be5aebe26"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.156.0/eca-native-macos-amd64.zip"
      sha256 "227ef3b4178d14b968cab3b9472f0057e76c495d164928a4d3d772b9d3bb4b8d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.156.0/eca-native-linux-amd64.zip"
      sha256 "83b2e269e1698f1486b234966172c6460364dd44861cde97342a93fd2de75993"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.156.0/eca-native-static-linux-amd64.zip"
      sha256 "9fa938e6f59319286b246895b21dc1fb0f00585e4d9ca8f462612086cb1259ab"
    end
  end

  def install
    bin.install "eca"
  end
end

