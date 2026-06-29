cask "gitcomet" do
  version "0.1.16"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "2cd4049ea4a8efc0e6f2ff97c9fbb480496b08f8db44de4be75fde1a26b0e822"
    end

    on_intel do
      sha256 "3d0b67aabcf61e866215b5214f5ae98d0bf6cb2a65101034083705cd26d63bba"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "33b5a5221d73d1e98c853d2880173bfd8cf74d88f7384bfc003e00fed1323884"
    end

    on_intel do
      sha256 "b5762a88390c3e8a5498529416252c01babedf8461aed3c65a8cea4aab9ea4ac"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
