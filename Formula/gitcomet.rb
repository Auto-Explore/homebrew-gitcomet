class Gitcomet < Formula
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.3"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.3/gitcomet-v0.1.3-macos-arm64.tar.gz"
      sha256 "c0bb43c60dfb022a380ef705e9f6bd4ef8e3a8fcd05b5cafa08b2d98a3575242"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.3/gitcomet-v0.1.3-macos-x86_64.tar.gz"
      sha256 "6bd4624eed9e5ddfc07c59fadda43e45a9ffe09d5d1d43bc24c38ca2b9177209"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.3/gitcomet-v0.1.3-linux-x86_64.tar.gz"
      sha256 "166a77987cf181634881cd4747ac19ca4a622ec656e07c2614bd95f3f1a4ce7a"
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
