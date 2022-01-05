const RealEstateContract = artifacts.require("RealEstateContract");

module.exports = function (deployer) {
  deployer.deploy(RealEstateContract);
};
