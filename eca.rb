class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.110.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.3/eca-native-macos-aarch64.zip"
      sha256 "b55748556ced9ee3fd5b135abc5f587de1f272b56f35d4ce4563fbaf08b8c65d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.3/eca-native-macos-amd64.zip"
      sha256 "a79e51e94b1b955ecf526b6fb59b2c451c5cce4123667fe435efc68db4a860c2"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.3/eca-native-linux-amd64.zip"
      sha256 "6960229f7c6d7e073aff494415d1b6fcc1cd2a22a852cb035550d3e92a607812"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.3/eca-native-static-linux-amd64.zip"
      sha256 "b247505fa3beabe4ff6b78562595df31a491f4d1bd2631b9c1d697bfbffe286c"
    end
  end

  def install
    bin.install "eca"
  end
end

