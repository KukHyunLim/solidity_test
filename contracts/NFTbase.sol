pragma solidity ^0.7.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTBase {
    event NewZombie(uint256 zombieId, string name, uint256 dna);

    uint256 dnaDigits = 16;
    uint256 dnaModulus = 10**dnaDigits;

    struct Zombie {
        string name;
        uint256 dna;
    }

    Zombie[] public zombies;

    // 여기서 매핑 선언

    // function _createZombie(string _name, uint _dna) private {
    //     uint id = zombies.push(Zombie(_name, _dna)) - 1;
    //     NewZombie(id, _name, _dna);
    // }

    // function _generateRandomDna(string _str) private view returns (uint) {
    //     uint rand = uint(keccak256(_str));
    //     return rand % dnaModulus;
    // }

    // function createRandomZombie(string _name) public {
    //     uint randDna = _generateRandomDna(_name);
    //     _createZombie(_name, randDna);
    // }
}
