cask "gitcomet" do
  version "0.2.3"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "03c09bdafb3708c089fc7090d90dd6ca2fbdec0ab3fd9138aaebe44a5fb9d4b1"
    end

    on_intel do
      sha256 "68e07e85678a686c0928d1b9abbc09f743dbb8860501ac6786faf7394c3a72e0"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "8bede3c1a1f4ecedb4f2537504cd188362dba168bca3d06a3e49affa65d9f97d"
    end

    on_intel do
      sha256 "6502994a00e0a44c2a35ffaa69f10ad821d2c87c2cc147d3ad90f8fec70740e4"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
