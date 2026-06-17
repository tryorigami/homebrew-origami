cask "origami" do
  version "0.23.0"
  sha256 "fac10849e51518c63ce810979fff4374c1fdb7a25d07382f655ca81d1142869f"

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
