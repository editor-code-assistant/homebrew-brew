class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.24.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.1/eca-native-macos-aarch64.zip"
      sha256 "c75f1b0f5a1386e98244df5ed5123153d42425d7c510269236e828ccafa181af"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.1/eca-native-macos-amd64.zip"
      sha256 "cdf503c2cdb664fef8b2ce9572d46fae1919f8829cc205819dcfe8830f7cae75"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.1/eca-native-linux-amd64.zip"
      sha256 "8f5207d4524b6c1ba905f09b29208807453e2518ccfb69e989ce0ba9eec46754"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.24.1/eca-native-static-linux-amd64.zip"
      sha256 "464b00ee64ba95f01940ba8bbce3ef64f4a518906071e791769bc7b7c910bc28"
    end
  end

  def install
    bin.install "eca"
  end
end

