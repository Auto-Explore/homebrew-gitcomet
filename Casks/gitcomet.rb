cask "gitcomet" do
  version "0.1.12"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "a12c1f40d51f1fe6b7669d258715bbed86a6d8aa49a8563af7333fd8eb7fdec4"
    end

    on_intel do
      sha256 "0c05261d6712f8b506910b290b20bf4973b23fb219e30d685fb0935070ff6fe9"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: ">= :ventura"

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "2b6725a424d9d85ad581b97b12c5812d518a8198ad3540042aba63cd18603cbf"
    end

    on_intel do
      sha256 "5ed3e38de79bca66858c9e31001931511ef94e4654abe3208a4d448723d0f303"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
