cask "gitcomet" do
  version "0.2.0"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "b524623ddbbe2093f97ac7cda7b88f6260e8b28bccd2601312cc40335fb09060"
    end

    on_intel do
      sha256 "011b648de763b8ef1c1193810339d6704c2c035c3d8e4bb60a38831eeb307cd4"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "0e2668629d1e6f258663428e656b5f3aeb47e983a485b46fa1bffeb6008dc8c9"
    end

    on_intel do
      sha256 "e2717279bc9216fcf75cf0e455e85bd4161eac17209d11cb6b2f16309cff6d29"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
