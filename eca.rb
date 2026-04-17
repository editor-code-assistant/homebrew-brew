class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.128.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.0/eca-native-macos-aarch64.zip"
      sha256 "6b5d4481c860b3c3b4c5b11a4e5b791f99f650d704de480fa5a5e7139a03b714"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.0/eca-native-macos-amd64.zip"
      sha256 "16acdeb9e4a9d0944ed12c99e8647ec922cc7db40bca6b9bc9bf42beec8f8523"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.0/eca-native-linux-amd64.zip"
      sha256 "91db198436f505c40b89a439e295e48436da98c39c1a50c7754501f812136f98"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.128.0/eca-native-static-linux-amd64.zip"
      sha256 "10ef119aaac6c66deab4df6ece2a3d58cc17e075b3d249239d2bccc2caef4aba"
    end
  end

  def install
    bin.install "eca"
  end
end

