const YoloCoin = artifacts.require("YoloCoin");

module.exports = function (deployer) {
  deployer.deploy(YoloCoin, 1000000);
};
