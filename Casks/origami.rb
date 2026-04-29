cask "origami" do
  version "0.18.1"
  sha256 "ede24a943f386799bd9cf751bad7923346dbaec38a895e02fdda885c569f88f6"

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
