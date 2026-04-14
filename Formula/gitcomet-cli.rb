class GitcometCli < Formula
  desc "GitComet command-line binary"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.10"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.10/gitcomet-v0.1.10-macos-arm64.tar.gz"
      sha256 "5b634d213fee665042c77fa3d0be83c1009bcfafda2e4b106a6af717407e3794"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.10/gitcomet-v0.1.10-macos-x86_64.tar.gz"
      sha256 "aa2d77be34f669422d08fd243265bd890be0c3ac2512f1c4dde540c4c0043aa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.10/gitcomet-v0.1.10-linux-arm64.tar.gz"
      sha256 "125e7eadae985db0b0c6d7d1c24be1a1d06ae812be2bd3e85e82786b0ee0accd"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.10/gitcomet-v0.1.10-linux-x86_64.tar.gz"
      sha256 "e8a448615374142434163e3c2560cd360405dd68c10739901e14c9af26877c43"
    end
  end

  def install
    bin.install "gitcomet"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gitcomet --help")
  end
end
