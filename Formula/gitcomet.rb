class Gitcomet < Formula
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.2/gitcomet-v0.1.2-macos-arm64.tar.gz"
      sha256 "8904aad926295a8a21b8ef866e2012af0ef15c1e05b759e21b25db0bfc033060"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.2/gitcomet-v0.1.2-macos-x86_64.tar.gz"
      sha256 "dc45a141c4e2511e3bc76e1d4877a05cc1e7ab50ac086e736814042c8d35826f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.2/gitcomet-v0.1.2-linux-x86_64.tar.gz"
      sha256 "4479970f53abe2fe68e1f9e583e94b2e3cd33bcb218846bdb90a2b861465c131"
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
