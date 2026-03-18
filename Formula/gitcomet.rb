class Gitcomet < Formula
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.5"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.5/gitcomet-v0.1.5-macos-arm64.tar.gz"
      sha256 "be2e7bf27200774ca4aec034802c14e166c1ddac9c1dcdd02a14ed1b78bbabf6"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.5/gitcomet-v0.1.5-macos-x86_64.tar.gz"
      sha256 "c09abd3a566a7f33ee206c4d6e2c0e1a44e829208edaec4cff23f7f694320425"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.5/gitcomet-v0.1.5-linux-x86_64.tar.gz"
      sha256 "df6c894281d1a74a79c28799685061b49761c99843409fb0bdd5748293cecdfc"
    end
  end

  def install
    if OS.mac?
      libexec.install "GitComet.app"
      bin.install_symlink libexec/"GitComet.app/Contents/MacOS/gitcomet"
    else
      bin.install "gitcomet"
    end
  end

  def post_install
    return unless OS.mac?

    target_app = libexec/"GitComet.app"
    return unless target_app.exist?

    apps_dir = Pathname.new(File.expand_path("~/Applications"))
    apps_dir.mkpath unless apps_dir.exist?

    launcher_link = apps_dir/"GitComet.app"
    if launcher_link.exist? && !launcher_link.symlink?
      opoo "Skipping ~/Applications/GitComet.app link because a non-symlink path already exists."
      return
    end

    launcher_link.unlink if launcher_link.symlink?
    launcher_link.make_symlink(target_app)
  rescue StandardError => e
    opoo "Failed to link GitComet.app into ~/Applications: #{e}"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gitcomet --help")
  end
end
