class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.147.3"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.3/eca-native-macos-aarch64.zip"
      sha256 "900d8603e8ee5426ef638d1499c1e24c88e29297220d60da8b6e8cc449a81c77"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.3/eca-native-macos-amd64.zip"
      sha256 "fc3896b6624d58ea908c27a2ecdf5b7a7cd872612854a28ff59b03b38faed609"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.3/eca-native-linux-amd64.zip"
      sha256 "c385594fe9c1b153088985026b596e65301933e440306793494a3778964b718b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.3/eca-native-static-linux-amd64.zip"
      sha256 "5d60f38c6401b338c5a64e856eb3ba15ac9089d82aa83285cd844659aa81abc8"
    end
  end

  def install
    bin.install "eca"
  end
end

