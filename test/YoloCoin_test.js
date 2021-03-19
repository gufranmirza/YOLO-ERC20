var YoloCoin = artifacts.require("./YoloCoin.sol");

contract('YoloCoin', function(accounts) {
  var tokenInstance;

  it('allocates the initial supply upon deployment', function() {
    return YoloCoin.deployed().then(function(instance) {
      tokenInstance = instance;
      return tokenInstance.totalSupply();
    }).then(function(totalSupply) {
      assert.equal(totalSupply.toNumber(), 1000000, 'sets the total supply to 1,000,000');
    });
  });

});