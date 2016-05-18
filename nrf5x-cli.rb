class Nrf5xCli < Formula
  desc "Command Line Toolset for nRF5x"
  homepage "http://www.nordicsemi.com/eng/Products/Bluetooth-Smart-Bluetooth-low-energy/nRF52832"
  url "http://www.nordicsemi.com/eng/nordic/download_resource/53406/3/56966576"
  version "8.4.0"
  sha256 "1ee135c96dafa80d1c91c495dd3ad878ebabf3b453152d846d7a5acad6f06ad5"

  def install
    cp_r [ "mergehex", "nrfjprog" ], "#{prefix}/"
    bin.install_symlink "#{prefix}/mergehex/mergehex"
    bin.install_symlink "#{prefix}/nrfjprog/nrfjprog"
  end
end
