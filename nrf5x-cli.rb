class Nrf5xCli < Formula
  desc "Command Line Toolset for nRF5x"
  homepage "http://www.nordicsemi.com/eng/Products/Bluetooth-Smart-Bluetooth-low-energy/nRF52832"
  url "http://www.nordicsemi.com/eng/nordic/download_resource/53406/6/72310299"
  version "9.0.0"
  sha256 "9d568db6552d64eb65aa5d04241d0179fe67828e01b98c5c6de0760ad9993ef6"

  def install
    cp_r [ "mergehex", "nrfjprog" ], "#{prefix}/"
    bin.install_symlink "#{prefix}/mergehex/mergehex"
    bin.install_symlink "#{prefix}/nrfjprog/nrfjprog"
  end
end
