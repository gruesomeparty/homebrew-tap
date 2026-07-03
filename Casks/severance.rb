cask "severance" do
  version "1.1.1"
  sha256 "ccf9278b33424239998b3d36d66de3f7600044a0b58d6b682a0f7b0f0a0371d6"

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
