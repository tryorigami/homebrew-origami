cask "origami" do
  version "0.20.1"
  sha256 "50edd69b3faffaf1f085cee673360911e10036f8c612857937c3cc24fcb477cd"

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
