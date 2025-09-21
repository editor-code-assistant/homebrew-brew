class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.56.4"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.4/eca-native-macos-aarch64.zip"
      sha256 "27d677bd9e2da104dff0c2ce06c3ca6c2c452df9d15655a17292c4a503e65a84"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.4/eca-native-macos-amd64.zip"
      sha256 "a2bd049f590154ad0c83025dd0cd784f5ecab1de53ecc487f4d5be3b48dc09ef"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.4/eca-native-linux-amd64.zip"
      sha256 "7e5a73433a3de0235803fe0720d52f1dd8d88c89291631eb24076c9038ccee14"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.56.4/eca-native-static-linux-amd64.zip"
      sha256 "21f0eac5049e5b96e1badb1d3096c510ead21ee8d95c66118c529dd6345d931d"
    end
  end

  def install
    bin.install "eca"
  end
end

