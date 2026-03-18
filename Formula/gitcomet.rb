class Gitcomet < Formula
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.4"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.4/gitcomet-v0.1.4-macos-arm64.tar.gz"
      sha256 "0f8d8f78a64b1ccf52180ec4dfa93b514b0dbfbf57981f10a5296263a9c1b1ea"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.4/gitcomet-v0.1.4-macos-x86_64.tar.gz"
      sha256 "f24c94a39ae9a3740d7c0e2fe50285c5043a4e05ed08c607b225316d40e7b298"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.4/gitcomet-v0.1.4-linux-x86_64.tar.gz"
      sha256 "816d706d5f621101ccdb41927a96ad53a1a75a4f1182ddeab3cd745df0d05d37"
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
