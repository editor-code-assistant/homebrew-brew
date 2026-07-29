class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.151.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.151.1/eca-native-macos-aarch64.zip"
      sha256 "349c8219ef3ddd8522c41a236301a04c64841af3119bd4f0dace24af0cd1dfaf"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.151.1/eca-native-macos-amd64.zip"
      sha256 "c39be3bfc7b706b0324bc76ba99cee29a0a255988a80242821daec8ee578ad88"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.151.1/eca-native-linux-amd64.zip"
      sha256 "5ceca4d92b91370355259d876362d622d71f718bb8b1b777fc1b7b309d19f78a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.151.1/eca-native-static-linux-amd64.zip"
      sha256 "9e81e1a85e727f5b34c41129f5ba7d59b322dc63e1079162610d0555f61a1c81"
    end
  end

  def install
    bin.install "eca"
  end
end

