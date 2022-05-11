const Armory = artifacts.require("Armory");
const AH = artifacts.require("AH");
const Faucet = artifacts.require("Faucet");

module.exports = function(deployer) {
  deployer.deploy(Armory);
  deployer.deploy(AH);
  deployer.deploy(Faucet);
};
