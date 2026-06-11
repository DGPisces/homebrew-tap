cask "bough" do
  version "9.9.9"
  sha256 "8ceaf8745ccb63f8c4ec3d064af88445d41593baf9842723bb55d3aa9aac367d"

  url "https://github.com/DGPisces/bough/releases/download/v#{version}/Bough-v#{version}.dmg"
  name "Bough"
  desc "Notch utility for AI coding agents, usage, music, lyrics, and AirDrop"
  homepage "https://github.com/DGPisces/bough"

  depends_on macos: :sonoma

  app "Bough.app"

  zap trash: [
    "~/.bough",
    "~/Library/Preferences/com.dgpisces.bough.plist",
  ]

  caveats <<~EOS
    Homebrew manages updates for this install:
      brew update
      brew upgrade --cask bough

    Bough's in-app updater is for the GitHub Releases DMG install path.
  EOS
end
