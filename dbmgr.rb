class Dbmgr < Formula

  desc "Backup and restore development databases"
  homepage "https://github.com/callahanrts/dbmgr"
  url "https://github.com/callahanrts/dbmgr/archive/v0.1.4.tar.gz"
  sha256 "88bffaf25c48bc72e939ed5c90d5a19fde53d67555ed28f0c19245908817288b"

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
