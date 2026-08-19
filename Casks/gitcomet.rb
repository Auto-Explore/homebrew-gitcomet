cask "gitcomet" do
  version "0.2.1"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "554edc245f47717a1656d1b1c7e5352d6666fdcd3038b158997055469ed880ab"
    end

    on_intel do
      sha256 "f45a0eff9250e062bad8260ebb13286d329062e12d2999069e2068047d624197"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "ff279102758f50e21bb8243a7261f9d31e679caeaf2ecd156c7a969f3b23a318"
    end

    on_intel do
      sha256 "3870030b4e3a4a060f40f95cc3e0aea1efcd67b3768f8dad486ef5b65080d1dc"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
