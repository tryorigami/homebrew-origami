cask "origami" do
  version "0.18.2"
  sha256 "275e70886f1cac07f5049d6fc120bb5ab63ee398f06f58a9956a45882d399f2b"

  url "https://storage-worker.ricardo-020.workers.dev/releases/Origami_#{version}_universal.dmg"
  name "Origami"
  desc "Workspace-oriented terminal manager"
  homepage "https://tryorigami.app/"

  livecheck do
    url "https://storage-worker.ricardo-020.workers.dev/releases/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Origami.app"

  zap trash: [
    "~/Library/Application Support/app.tryorigami.macos",
    "~/Library/Caches/app.tryorigami.macos",
    "~/Library/Preferences/app.tryorigami.macos.plist",
    "~/Library/WebKit/app.tryorigami.macos",
  ]
end
