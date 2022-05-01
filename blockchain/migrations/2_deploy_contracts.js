const Gallery = artifacts.require("Gallery");
const AH = artifacts.require("AH");
const Faucet = artifacts.require("Faucet");

module.exports = function(deployer) {
  deployer.deploy(Gallery);
  deployer.deploy(AH);
  deployer.deploy(Faucet);
};
