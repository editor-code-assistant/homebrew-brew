class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.138.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.138.0/eca-native-macos-aarch64.zip"
      sha256 "b56e3360647b4737cc1b3bb2eb5a750886c7faeeba77ae654416899d2a47a637"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.138.0/eca-native-macos-amd64.zip"
      sha256 "5bc9544bc83a31666d1534e74a7cf67ab9e33ed6d15e84c7e4a17141b8ebaa19"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.138.0/eca-native-linux-amd64.zip"
      sha256 "34649f80203508be4e131439fcc58ca2e497fd9a49ca87933a3a071298527f99"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.138.0/eca-native-static-linux-amd64.zip"
      sha256 "b4f17e476eda80899a0a990bddf698253db002c79f997818a1eedfad8a7111dd"
    end
  end

  def install
    bin.install "eca"
  end
end

