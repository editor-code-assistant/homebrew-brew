class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.75.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.1/eca-native-macos-aarch64.zip"
      sha256 "6549a4e8ce8fe24820f6daa723a97a90587dc2deffe07b45e6274c5cfbca32fe"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.1/eca-native-macos-amd64.zip"
      sha256 "dbe7fc3370f6fbe81c7b86f38f97586a96e8eae3d388a78ef33265d0c12d82b1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.1/eca-native-linux-amd64.zip"
      sha256 "d8c5fefd46d604acc7db7bc2e7f3024fb906f59a40782fa8cf079783980a135d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.75.1/eca-native-static-linux-amd64.zip"
      sha256 "ad4b3a2848baab7f5c1ff8bf961d6ab124a0dd3d525ba476232f47368aa0bc72"
    end
  end

  def install
    bin.install "eca"
  end
end

