class Dbmgr < Formula

  desc "Backup and restore development databases"
  homepage "https://github.com/callahanrts/dbmgr"
  url "https://github.com/callahanrts/dbmgr/archive/v0.1.2.tar.gz"
  sha256 "9f249501e3f66fdca60ff5ac77b8104b06e65cc76ce476c9651c3224527a29d2"

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
