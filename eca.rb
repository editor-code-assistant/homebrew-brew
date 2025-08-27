class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.36.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.2/eca-native-macos-aarch64.zip"
      sha256 "1d1a728d9f908aeee2929b1ec79bbc72a2d8dc311d3b271f09d3d59b3c17adbb"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.2/eca-native-macos-amd64.zip"
      sha256 "5d897f55aabb06ac774dc6ba23bfddbd544816bbe2f9053e1fff045c29a30438"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.2/eca-native-linux-amd64.zip"
      sha256 "c1ba087711c924542fa185d1d6e85825d382aa873fb20cb439d5e178580fa21e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.36.2/eca-native-static-linux-amd64.zip"
      sha256 "45c0ee652eb728cc5b9ec465bb02029a9580f1b06a9589d7a5b3c2bbdf4ec441"
    end
  end

  def install
    bin.install "eca"
  end
end

