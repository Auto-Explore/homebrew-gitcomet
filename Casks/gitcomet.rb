cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.9"
  sha256 arm: "d557820d12a99db444f3040a9c195ed2db309f04db39015eaee09e98f437115d", intel: "e236de5c5766409a612d472ebf8a1a90df559c929185be041d5b16ac39b81604"

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
