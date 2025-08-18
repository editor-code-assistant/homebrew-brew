class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.29.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.2/eca-native-macos-aarch64.zip"
      sha256 "94ee4dd1430d56b5c335dd22500b382c460a9c12fc52dfd1f7312cafd566c63e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.2/eca-native-macos-amd64.zip"
      sha256 "cb3ae3f1a49bfc3a5574c7a3311feab5428a5aef6db7c2e97a405dc156774092"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.2/eca-native-linux-amd64.zip"
      sha256 "d3d03e91a1e6ffa34244f9d721b2351f0a09eb6412576e5408c006376140992c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.29.2/eca-native-static-linux-amd64.zip"
      sha256 "19c5f4435f09be78cd5a9a216eaddad569d898106b129763edd6b0ba05e6e418"
    end
  end

  def install
    bin.install "eca"
  end
end

