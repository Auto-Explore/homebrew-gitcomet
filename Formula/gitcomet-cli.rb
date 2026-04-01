class GitcometCli < Formula
  desc "GitComet command-line binary"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.8"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.8/gitcomet-v0.1.8-macos-arm64.tar.gz"
      sha256 "5af1f29814d5f3321670288dc733a272169759ce892369820f9dceb8cde42c23"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.8/gitcomet-v0.1.8-macos-x86_64.tar.gz"
      sha256 "c7e3665cfc6d8381e2cc4a073673ec7fa6a0948e0fb840711f88dcc5270eeb8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.8/gitcomet-v0.1.8-linux-arm64.tar.gz"
      sha256 "cf1854efc563638992a25742baf8c3971c30ec3bd0e9361680dfdb1e09feea4c"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.8/gitcomet-v0.1.8-linux-x86_64.tar.gz"
      sha256 "70836dabbafc4f375f90adfb9982003327d4c06fad73de1f0d08e18d784fce77"
    end
  end

  def install
    bin.install "gitcomet"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gitcomet --help")
  end
end
