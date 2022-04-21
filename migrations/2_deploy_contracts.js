const mortal = artifacts.require("mortal");

module.exports = function(deployer) {
  deployer.deploy(mortal);
};
