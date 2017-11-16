class Dbmgr < Formula

  desc "Backup and restore development databases"
  homepage "https://github.com/callahanrts/dbmgr"
  url "https://github.com/callahanrts/dbmgr/archive/v0.2.0.tar.gz"
  sha256 "4b96623c4dd0ab9cf6d2f54ff86648c89f647b86be855b3d637daf99d77821c4"

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
