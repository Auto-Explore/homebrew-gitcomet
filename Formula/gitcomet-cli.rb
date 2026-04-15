class GitcometCli < Formula
  desc "GitComet command-line binary"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.11"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.11/gitcomet-v0.1.11-macos-arm64.tar.gz"
      sha256 "c1b1a069726f6044d553f04cf27d2d6e1456912beee7cd967a0f5a659959fc02"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.11/gitcomet-v0.1.11-macos-x86_64.tar.gz"
      sha256 "4b61b6b51032b7df3c22ffef7c25e3eae5a95239684fb3104d31149acadbb919"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.11/gitcomet-v0.1.11-linux-arm64.tar.gz"
      sha256 "df17c7424e65477c1934080ab4192b69c5d4741f8ff97a17e1641f2dd11ce996"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.11/gitcomet-v0.1.11-linux-x86_64.tar.gz"
      sha256 "6e6b8820054a3c0716dd49c690b6d715f9a27154e287857c24710cce936cf6be"
    end
  end

  def install
    bin.install "gitcomet"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gitcomet --help")
  end
end
