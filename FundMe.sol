// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.28;

contract FundMe {
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable {
        addressToAmountFunded[msg.sender] += msg.value;
        require(msg.value > 1e18, "Did not send enough ETH");
    }

    function getVersion() public pure returns (uint256) {
        return 1;
    }
}