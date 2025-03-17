// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    constructor(address owner) Ownable(owner) {}

    uint256 private s_value;

    event NumberChanged(uint256 number);

    function store(uint256 newNumber) public onlyOwner {
        s_value = newNumber;
        emit NumberChanged(newNumber);
    }

    function retrieve() external view returns (uint256) {
        return s_value;
    }
}
