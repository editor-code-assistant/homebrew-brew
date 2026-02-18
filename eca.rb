class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.102.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.102.0/eca-native-macos-aarch64.zip"
      sha256 "446be7ee5570935648cf34dbb49cfea9703311eb78968324aaf69748ccb3b5b9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.102.0/eca-native-macos-amd64.zip"
      sha256 "031b23af2d00b843b38e71148772eab2d603753bbe80c29b99ce7525afc4b73e"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.102.0/eca-native-linux-amd64.zip"
      sha256 "48b8344d579da87a3b4f33d45e271c769b2d1da9d80c815ce48e6066a7bb155b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.102.0/eca-native-static-linux-amd64.zip"
      sha256 "b4ba5991591887e3f76b2784efaaf546a1e2891607f45dcafc2802715c93c693"
    end
  end

  def install
    bin.install "eca"
  end
end

