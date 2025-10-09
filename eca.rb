class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.66.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.66.0/eca-native-macos-aarch64.zip"
      sha256 "8a7d260a93e7e8cc202dbea8f8c555a48b09dbc4aa03641acc824e8f7058f233"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.66.0/eca-native-macos-amd64.zip"
      sha256 "49a216faac61f539be5f3aefb312259adf3371f9c8a2b231b45b60f4fecac8ae"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.66.0/eca-native-linux-amd64.zip"
      sha256 "054a43c7287b23033a355fb06ff36c8f11d1e24b718af23bf47bb30d2e57e561"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.66.0/eca-native-static-linux-amd64.zip"
      sha256 "70a22d30c45b304a627c7d054c7eaad7567d18558dc8d701d0c30c0d307dc56f"
    end
  end

  def install
    bin.install "eca"
  end
end

