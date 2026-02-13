class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.101.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.101.0/eca-native-macos-aarch64.zip"
      sha256 "9846ca3ac8d4f7c9421b6839162c44f023099aaf92d411a72bc5f2d749401117"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.101.0/eca-native-macos-amd64.zip"
      sha256 "f66184896a5fdf3a89d077ac127071f0037fc258eb0ce853e0517cd147f1db5e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.101.0/eca-native-linux-amd64.zip"
      sha256 "d5f4a398ccd72c8c7aff608a5cfdc67754ed4af5e77d0f334b010a207c57065d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.101.0/eca-native-static-linux-amd64.zip"
      sha256 "434350e20ef4fa28e1b9050954dc350ea52ebfcd308e492f4779aba46eb92b16"
    end
  end

  def install
    bin.install "eca"
  end
end

