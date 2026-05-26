cask "gitcomet" do
  version "0.1.14"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "050f84c354e8ae113c041fbb8c784c797cdd8f9689613917eaca340362281c5f"
    end

    on_intel do
      sha256 "8661e8ab9339f9521a2883456dbb37c58d21341386bfb128d2c80e7e7b6a16bd"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: ">= :ventura"

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "6e095197ea698f2b2a01e0a2210369baf1f60046e2ff879f3013096e642324e5"
    end

    on_intel do
      sha256 "2cd8174f1814163f780c79a050a44aa9b8306b681f2ced1dc06612c6a1d3b0ee"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
