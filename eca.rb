class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.73.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.4/eca-native-macos-aarch64.zip"
      sha256 "d59addc909b520bfcea10b74dd80dcd1461a4068e02e2efbb505693ed5d58395"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.4/eca-native-macos-amd64.zip"
      sha256 "96377ad7984f4b26c2ca0e3eb5132c74fe17fa5e2dbccfe460f9bb081c8ba948"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.4/eca-native-linux-amd64.zip"
      sha256 "d77e4051d8e4bc92e10895c46d4ec9a930c590e727597008ef15ec61be495b91"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.73.4/eca-native-static-linux-amd64.zip"
      sha256 "53b75b1f9b1748caae95debfae0d4a8a70d2d7537f694d586d3f409672c7ab89"
    end
  end

  def install
    bin.install "eca"
  end
end

