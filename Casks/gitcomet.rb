cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.11"
  sha256 arm: "99b9b3fefe00c3d1eb44b16f4f5479fb9371fe7e013187df54f9d27e0451da82", intel: "97a8139e3d24ff177ce2dff17f4b5b9f5fbde0817e34b083445380c4e4dd526f"

  url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"

  depends_on macos: ">= :ventura"

  app "GitComet.app"

  caveats do
    <<~EOS
      Optional CLI:
        brew install gitcomet-cli
    EOS
  end
end
