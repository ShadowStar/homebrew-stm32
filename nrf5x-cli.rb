class Nrf5xCli < Formula
  desc "Command Line Toolset for nRF5x"
  homepage "http://www.nordicsemi.com/eng/Products/Bluetooth-Smart-Bluetooth-low-energy/nRF52832"
  url "http://www.nordicsemi.com/eng/nordic/download_resource/53406/4/75627120"
  version "8.5.0"
  sha256 "0823fd82c48ea1b6f37c1897b66dbf5e7ffd8d312e9c2d8b30169a6544af110b"

  def install
    cp_r [ "mergehex", "nrfjprog" ], "#{prefix}/"
    bin.install_symlink "#{prefix}/mergehex/mergehex"
    bin.install_symlink "#{prefix}/nrfjprog/nrfjprog"
  end
end
