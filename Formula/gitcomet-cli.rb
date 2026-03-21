class GitcometCli < Formula
  desc "GitComet command-line binary"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.7"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.7/gitcomet-v0.1.7-macos-arm64.tar.gz"
      sha256 "10c70da2a0e7151d4b0c99f88fc04298ff273fb24bc8e0041085d86ef2ecd9ec"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.7/gitcomet-v0.1.7-macos-x86_64.tar.gz"
      sha256 "ae697a81a544a428c8182e0f7b2b18e1a680d292aeea08665aef431cb1e8ee04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.7/gitcomet-v0.1.7-linux-arm64.tar.gz"
      sha256 "8e9e9b921098188c1383653670dfb5785c8a0bd630a50b18f0294b9e11531e26"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.7/gitcomet-v0.1.7-linux-x86_64.tar.gz"
      sha256 "a2bd0408d6434b76baeae700a30e90212467ec1c646e83d848763998033315ad"
    end
  end

  def install
    bin.install "gitcomet"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gitcomet --help")
  end
end
