class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.150.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.150.0/eca-native-macos-aarch64.zip"
      sha256 "3b23e8dfd7f625d049b8622af24f646d70b47f3966e54e822fc9e2f5f0419290"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.150.0/eca-native-macos-amd64.zip"
      sha256 "51b65fcbc646fba44386884e07959e712efd84be70122921bdb6fbc005b23946"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.150.0/eca-native-linux-amd64.zip"
      sha256 "ea5185dd3e465885cb58657b43445203c4cfa360e13b29d41414de4b29a451c8"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.150.0/eca-native-static-linux-amd64.zip"
      sha256 "f455328b9d1d21f78dc62bfaa288df93123a30730bb05799dffc581e588a6e6b"
    end
  end

  def install
    bin.install "eca"
  end
end

