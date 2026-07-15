class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.147.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.1/eca-native-macos-aarch64.zip"
      sha256 "8e845dd2aad8aca81b142aa09e43d9e5f724ea12145742bdefad7e58527c03bc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.1/eca-native-macos-amd64.zip"
      sha256 "38640f779d76e2673fe1285b1b916810ef117e97c5f092e3451621d2e1abe73d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.1/eca-native-linux-amd64.zip"
      sha256 "6ebd4a3abdfc4a114572b3c536e83daf80cb30bd778da53e176ac7e7bf8ae60d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.147.1/eca-native-static-linux-amd64.zip"
      sha256 "ed48a92b4c92d8fdd66f0205d66d48dcef872e28a0b6f857dd6a80c305ec8d80"
    end
  end

  def install
    bin.install "eca"
  end
end

