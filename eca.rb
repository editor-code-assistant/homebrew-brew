class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.80.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.1/eca-native-macos-aarch64.zip"
      sha256 "3d3743db6373b3d0281e4076c5535d70e3b5abead9bdd20981c420c90398930a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.1/eca-native-macos-amd64.zip"
      sha256 "60d250d398a92e27df734119d0e568cf780f11862c3831e8bb2c56601941dff0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.1/eca-native-linux-amd64.zip"
      sha256 "53674fe4223e52ecd05e1e008075ed6f84b33cf468d0b947f577671923fd3044"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.80.1/eca-native-static-linux-amd64.zip"
      sha256 "bc69310fa817f190c5a5b6aaadb16881f2a51b916a53ab2994b53d67bc2bf835"
    end
  end

  def install
    bin.install "eca"
  end
end

