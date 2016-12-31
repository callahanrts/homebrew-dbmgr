class Dbmgr < Formula

  desc "Backup and restore development databases"
  homepage "https://github.com/callahanrts/dbmgr"
  url "https://github.com/callahanrts/dbmgr/archive/v0.1.3.tar.gz"
  sha256 "6ee04bb1c4c1b5eb5a68103073ab9bac7ea5427b973ef2447d9c9bf44b8add68"

  head "https://github.com/callahanrts/dbmgr.git"
  bottle :unneeded

  def install
    lib.install Dir["lib/*"]
    bin.install "bin/dbmgr"
  end

  test do
    system "#{bin}/dbmgr", "help"
  end

end
