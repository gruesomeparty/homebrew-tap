cask "severance" do
  version "1.1.0"
  sha256 "425a9cc2dec281117d837694d4301dd68f54f6522960a849055f565fea0fdfaf"

  url "https://github.com/gruesomeparty/severance/releases/download/menubar-v#{version}/Severance-macos.zip"
  name "Severance"
  desc "Menu bar dashboard and resume scheduler for the Severance budget gate"
  homepage "https://github.com/gruesomeparty/severance"

  depends_on macos: :sonoma

  app "Severance.app"

  caveats <<~EOS
    Severance.app is ad-hoc signed (not notarized). If Gatekeeper blocks it:
      xattr -dr com.apple.quarantine "#{appdir}/Severance.app"
    or install without quarantine:
      brew install --cask --no-quarantine gruesomeparty/tap/severance
  EOS
end
