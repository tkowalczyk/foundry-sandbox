// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Contract is Ownable {
    uint public counter;

    constructor(uint _counter) {
        counter = _counter;
    }

    function get() public view returns (uint) {
        return counter;
    }

    function inc() external {
        counter += 1;
    }

    function dec() external onlyOwner {
        counter -= 1;
    }
}