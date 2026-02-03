class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.97.7"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.7/eca-native-macos-aarch64.zip"
      sha256 "ac6b6f1e61ccf0e6c05894b798607cba2388ec05634bcf59d772ec04bc1517f0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.7/eca-native-macos-amd64.zip"
      sha256 "b56192fa94129e3351140830a1bd9dd14b0f1a424b460d8d1a9401371a7ce337"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.7/eca-native-linux-amd64.zip"
      sha256 "6546409f20c8f743b91c94807691d716b5e4035a19550f2346e607620bcab4c1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.97.7/eca-native-static-linux-amd64.zip"
      sha256 "4ae98ed67dc37e3999f7f6f3d03b190faaab8f65356e36117fdb1cde03d73bbf"
    end
  end

  def install
    bin.install "eca"
  end
end

