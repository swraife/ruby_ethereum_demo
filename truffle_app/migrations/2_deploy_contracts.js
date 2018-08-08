var ConvertLib = artifacts.require('./ConvertLib.sol')
var Ownable = artifacts.require('./Ownable.sol')
var Rubyist = artifacts.require('./Rubyist.sol')

module.exports = function (deployer) {
  deployer.deploy(Ownable).then(function() {
    deployer.deploy(Rubyist);    
  });
};
