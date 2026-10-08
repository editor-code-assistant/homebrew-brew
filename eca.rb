class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.163.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.163.0/eca-native-macos-aarch64.zip"
      sha256 "dbbf0a10f550fb9506202799925211b06c03e88b50cf89788f4fe4125e40d585"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.163.0/eca-native-macos-amd64.zip"
      sha256 "dd3f5668bc3293fd24e3f7d7a6faa5eb444d85bca0482e5d699577794612adec"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.163.0/eca-native-linux-amd64.zip"
      sha256 "7f3bf8dc46ab3285ff0dc9892c48dd7ddfa024e1ae9e4f3a7983b5f3bf9e04c9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.163.0/eca-native-static-linux-amd64.zip"
      sha256 "8e05ea4f2d15267873fcc502eef3fbf1ba3217e2313bcad173a15eaf6aa7831b"
    end
  end

  def install
    bin.install "eca"
  end
end

