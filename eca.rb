class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.161.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.2/eca-native-macos-aarch64.zip"
      sha256 "7e8aec7c4964d56a0772cb2015b22479a74be3bec5844e94ea9fc118c1881ff4"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.2/eca-native-macos-amd64.zip"
      sha256 "d6fcaa9c67106573b1d9a633004fe67bff324ceb9ed2ebc655807c41529b9298"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.2/eca-native-linux-amd64.zip"
      sha256 "883a5a749701de9f8d07eba393ca6e66d254f90b52cfc82e22ed2316d70b4116"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.161.2/eca-native-static-linux-amd64.zip"
      sha256 "cd3430cf1271a70c15745b552501a0e0f49bc88101e3ecfe5db5a99596dfe996"
    end
  end

  def install
    bin.install "eca"
  end
end

