class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.115.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.4/eca-native-macos-aarch64.zip"
      sha256 "70eacc83f666b6519fb9d3c8e37d3b119190718e4005367beed128cdfff86f93"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.4/eca-native-macos-amd64.zip"
      sha256 "df6f84eb2b6f96380a3e7ea0fc462d4aa7130976b5f3adc3c45bb10882cbd561"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.4/eca-native-linux-amd64.zip"
      sha256 "a15a68d9166433849ec0f4344ab9873d653e58cec5ae154e6982ba333f019836"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.4/eca-native-static-linux-amd64.zip"
      sha256 "32affb27fe67519ef906cdb79f5bf1b593ec0d0ba2a5a757cafb8b425c72c4aa"
    end
  end

  def install
    bin.install "eca"
  end
end

