// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./access-control/Auth.sol";

contract NFTbase {
    uint256 private value;
    Auth private auth;

    constructor(Auth _auth) public {
        auth = _auth;
    }

    event ValueChanged(uint256 newValue);

    function store(uint256 newValue) public {
        require(auth.isAdministrator(msg.sender), "Unauthorized");

        value = newValue;
        emit ValueChanged(newValue);
    }

    // Reads the last stored value
    function retrieve() public view returns (uint256) {
        return value;
    }
}
