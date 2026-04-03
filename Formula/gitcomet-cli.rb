class GitcometCli < Formula
  desc "GitComet command-line binary"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.9"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.9/gitcomet-v0.1.9-macos-arm64.tar.gz"
      sha256 "d145b5ada87e5cb87969f6010eb34cd129854f2c0f8327a7b019564630687d14"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.9/gitcomet-v0.1.9-macos-x86_64.tar.gz"
      sha256 "252b77a0bbd1bef295ebe38985a980f40c696057a7e2e87daaf2a40130b33d00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.9/gitcomet-v0.1.9-linux-arm64.tar.gz"
      sha256 "b0cfd3d9b2621aebc11127bd92d70fbd766958d7f968a92c47c8fbd8d3dcbb46"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.9/gitcomet-v0.1.9-linux-x86_64.tar.gz"
      sha256 "9a9d767f404536300cce318750c96517cb6d4e937a1cf2ebca3686c42037a43a"
    end
  end

  def install
    bin.install "gitcomet"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gitcomet --help")
  end
end
