cask "severance" do
  version "1.2.0"
  sha256 "043ef2a75c924d8d32f61ddc2c6a57e93ff051aec348c7b4968bae7206369dc1"

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
