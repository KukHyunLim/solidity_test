// migrations/2_deploy.js
const NFTbaseZep = artifacts.require("NFTbaseZep");

module.exports = async function (deployer) {
  await deployer.deploy(NFTbaseZep);
};