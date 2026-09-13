cask "gitcomet" do
  version "0.2.4"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "fc11a6724390719532c8421fe2ee8c9fb81b290038ebdd92d83b688580c4631f"
    end

    on_intel do
      sha256 "d8b2e81003c78dabc9d8dc2bfbc4f8f572a0ccae3977c66eef4ccebf4525c027"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "92494ecf6ea71c4ba8fcdaf61871989d4c05283c6fc06f39fac3ad8b3966be87"
    end

    on_intel do
      sha256 "a989eb4b33eea8e3a90b2710eabe9adef411f0b24f9aac26f0800c64222ea698"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
