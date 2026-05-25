class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.135.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.2/eca-native-macos-aarch64.zip"
      sha256 "0cc4716ec0b1a4f234bde2677470ab49d32eb1ad5ecefecdfefbe7f197457d96"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.2/eca-native-macos-amd64.zip"
      sha256 "1a87842637b27404a60ca215054a835b9f1b83a64a3b1a7e0945b45769714869"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.2/eca-native-linux-amd64.zip"
      sha256 "bb46084380d0ea0c1e695f9370568728176ca19654fd3d6a557676aa10ed8cc0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.135.2/eca-native-static-linux-amd64.zip"
      sha256 "a71d11a700fa9bcadf612571dae90b3aa59173b3940af7f170d2b8b5a55090fb"
    end
  end

  def install
    bin.install "eca"
  end
end

