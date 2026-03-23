class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.116.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.1/eca-native-macos-aarch64.zip"
      sha256 "5956dcc16e529b8ec130b0c0322c504682d885277068ae186bf4c80da5b975ab"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.1/eca-native-macos-amd64.zip"
      sha256 "fd434a5e2a0567235f90b508ce1bc3cca1d9b4ef47ee357ede1cc9c62570b348"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.1/eca-native-linux-amd64.zip"
      sha256 "b73bf4cf5c3b74bbb47827b67126f7f859a9943cf9db886eee5393aa8efec3a6"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.116.1/eca-native-static-linux-amd64.zip"
      sha256 "b85975e91e85aee021b48e83b73ba662c3443563973856de34641a42b64c238b"
    end
  end

  def install
    bin.install "eca"
  end
end

