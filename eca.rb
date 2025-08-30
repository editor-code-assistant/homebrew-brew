class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.39.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.39.0/eca-native-macos-aarch64.zip"
      sha256 "6e69acd6ca0e96e041daf113f32ef99bfaae9eae51df2f7b7a7c978cf47af98f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.39.0/eca-native-macos-amd64.zip"
      sha256 "08386b8c29f69c99a7fe43eef3f5b17a763a3029a4a216a5cb910e156b2b06c2"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.39.0/eca-native-linux-amd64.zip"
      sha256 "032325d26394514e07aab1b16e5a31b7a933559f94b1a67eec0cc018745fabb0"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.39.0/eca-native-static-linux-amd64.zip"
      sha256 "c1954e7aee01fa83799c3d60fefe255c1e8518d0f153589e1cc7071ef1e0391f"
    end
  end

  def install
    bin.install "eca"
  end
end

