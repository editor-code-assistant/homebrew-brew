class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.70.6"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.6/eca-native-macos-aarch64.zip"
      sha256 "b16e77a29673bb149ab507f7131e0949db0f594a11466f44ad6ed9dba1f52fba"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.6/eca-native-macos-amd64.zip"
      sha256 "1feab110be86527dbc9a622263901d289f58c869cc40b53b4e4b9bac08452dbf"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.6/eca-native-linux-amd64.zip"
      sha256 "2705c4ec6e90d24b55fc0758e8fd5298e49c1701eb322571ed2dd35193997c92"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.6/eca-native-static-linux-amd64.zip"
      sha256 "fbac4855369a7749d223de11b71558c0a2eb1391a19bff049c077dc6cb628e30"
    end
  end

  def install
    bin.install "eca"
  end
end

