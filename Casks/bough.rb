cask "bough" do
  version "1.2.3"
  sha256 "e32ad86cbfc44ebbf486083fa161f6466db7f3ab26f8f45c7fb4aeb91694645a"

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
