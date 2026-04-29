cask "origami" do
  version "0.18.0"
  sha256 "44c0ee687ee938377aa9eedd70fbedff83136673dadb822d97ec035d5bae1c96"

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
