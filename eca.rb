class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.153.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.153.1/eca-native-macos-aarch64.zip"
      sha256 "1c7491be27fadecf73153885b89f038f252dade98afc5560935ed6df9bd9ed0a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.153.1/eca-native-macos-amd64.zip"
      sha256 "32009417be9c8656a24f076e173ad4d18b89034980b3d033dd873fec67ac63d9"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.153.1/eca-native-linux-amd64.zip"
      sha256 "3cf19a2dd177a2f593f82b495d9e54773686bebb51a33476b28ab858e2caf86d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.153.1/eca-native-static-linux-amd64.zip"
      sha256 "bba1dd01db2178b52be8c7273772f3c8dbe47eb29b1fd5ec0a11b2bfb592e84e"
    end
  end

  def install
    bin.install "eca"
  end
end

