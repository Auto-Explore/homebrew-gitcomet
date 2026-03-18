class GitcometCli < Formula
  desc "GitComet command-line binary"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.6"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.6/gitcomet-v0.1.6-macos-arm64.tar.gz"
      sha256 "153a524febaaa7ca18430200b4f9cd46b4d74670c9056634e661ded42175bbd4"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.6/gitcomet-v0.1.6-macos-x86_64.tar.gz"
      sha256 "b1006db5b5e783e3058a763c7528fd03b04739d799e6781c60c93ed824663e3a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.6/gitcomet-v0.1.6-linux-x86_64.tar.gz"
      sha256 "21841270ae98c838dd48c8a76517970d8f6a88bb7c6b2a06665756a70dc625a8"
    end
  end

  def install
    bin.install "gitcomet"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gitcomet --help")
  end
end
