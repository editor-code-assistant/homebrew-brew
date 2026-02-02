class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.97.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.5/eca-native-macos-aarch64.zip"
      sha256 "d631c46649ad034d36f6897a65654b67f0c710a07328735bdb67a6a2ac73a8c0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.5/eca-native-macos-amd64.zip"
      sha256 "ae8e69ad32ef6d52086654756fb847d51bd0e8219ea7f9b3ae5f7f7b52d571ee"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.5/eca-native-linux-amd64.zip"
      sha256 "6fb07949b6d264446c065ad880a80a2c9ee3e8e1644f108593582fd31badd78a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.5/eca-native-static-linux-amd64.zip"
      sha256 "569f52a294c30a5397dae8f1ffd057df496aa3091d4bda95b71bf278511429b0"
    end
  end

  def install
    bin.install "eca"
  end
end

