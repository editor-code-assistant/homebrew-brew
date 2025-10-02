class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.63.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.3/eca-native-macos-aarch64.zip"
      sha256 "50ca504ef7632c95ea08a1c98d1e2742ab1b01f5faad96a0f8055144b0486c5b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.3/eca-native-macos-amd64.zip"
      sha256 "a67747e65e3014addd17572ea48a2a2f4adb1cce919216022ab5cec023e9e5cc"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.3/eca-native-linux-amd64.zip"
      sha256 "8009dc140c7400a3e3d14362fe1da2424923349c8ef7920255ec3041eff57c33"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.63.3/eca-native-static-linux-amd64.zip"
      sha256 "8eba985d5df9beadddd44097fc9af155985787a5158d7a01d218e0453717e4e6"
    end
  end

  def install
    bin.install "eca"
  end
end

