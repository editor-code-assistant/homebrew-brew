class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.115.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.2/eca-native-macos-aarch64.zip"
      sha256 "73ed3c812c2365ccddc884dacb5bd5e3ea4eaf20e0c1cb8a8108c5d558bd4b27"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.2/eca-native-macos-amd64.zip"
      sha256 "1d830567aef18147d8a3e1c2256aa7cdc44a08b9125291de01887c3c41ab6ff7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.2/eca-native-linux-amd64.zip"
      sha256 "5354274750c0ee1a1587a15883fef260fa17a7ddad72c670a0b4dc862ec83d59"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.2/eca-native-static-linux-amd64.zip"
      sha256 "9efaab68abc64453385ba44a3ac28b879cf49e2e0eff8170c6c4265a15537b5b"
    end
  end

  def install
    bin.install "eca"
  end
end

