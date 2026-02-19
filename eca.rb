class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.103.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.1/eca-native-macos-aarch64.zip"
      sha256 "95e70b3703a434adefce034bad0bb86df8cac2b48377efbfdbc73495db1e47b1"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.1/eca-native-macos-amd64.zip"
      sha256 "2f1deb7296c49a108eaf25ad852b530cfa559da015bb2f1ea809cbdea24e9758"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.1/eca-native-linux-amd64.zip"
      sha256 "e7971f8eeb4a11aeb0598762a423d1eb648df5b36fdd019aa15b258ad1f34f95"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.103.1/eca-native-static-linux-amd64.zip"
      sha256 "ca58242aa5d14f781cc87e1c6efc39ac32fbe8d30a297746bcb392be24f060e7"
    end
  end

  def install
    bin.install "eca"
  end
end

