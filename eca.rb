class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.117.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.117.1/eca-native-macos-aarch64.zip"
      sha256 "db02af9e88f9a4ce7bdf384ba5e4672f31d4d7401966547d4349875d9753cb4d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.117.1/eca-native-macos-amd64.zip"
      sha256 "a7907e29b09ac353808288bdbe0b2f265c34595925ee53c73ff21d8b40246498"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.117.1/eca-native-linux-amd64.zip"
      sha256 "4f6170d4ff43fd24943a3973cb6dac2c2ec84c2de6ac4acfa020a6a95b82c69e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.117.1/eca-native-static-linux-amd64.zip"
      sha256 "87b29d4dab59aae84e25c057d128d1ae01f80f66398eca144e5118c35b70de12"
    end
  end

  def install
    bin.install "eca"
  end
end

