class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.160.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.2/eca-native-macos-aarch64.zip"
      sha256 "303bb802d241b70ac87251c5c7ba0a11069b60826621c238bc7163924c029588"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.2/eca-native-macos-amd64.zip"
      sha256 "8b4606460753977a4d55b6addd879d2381f4d30a1965c1827edbeb90394d14b5"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.2/eca-native-linux-amd64.zip"
      sha256 "e64772444cada1267c6fbca328800a4481951c49d5ccf760145838822526d2c8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.160.2/eca-native-static-linux-amd64.zip"
      sha256 "70bb1ae64b1db34d56c65e0f15b64f8c7875a68abf96018fee070455ae6f69f7"
    end
  end

  def install
    bin.install "eca"
  end
end

