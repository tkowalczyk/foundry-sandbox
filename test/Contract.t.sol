// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "my-contract/Contract.sol";

abstract contract HelperContract {
    Contract myContract;
}

contract ContractTest is Test, HelperContract {

    function setUp() public {
        myContract = new Contract(1);
    }

    function testCounterIs1() public {
        assertEq(myContract.counter(), 1);
    }

    function testIncrementOwner() public {
        assertEq(myContract.counter(), 1);
        myContract.inc();
        assertEq(myContract.counter(), 2);
    }

    function testIncrementNotOwner() public {
        vm.prank(address(0));
        myContract.inc();
    }

    function testDecrementOwner() public {
        assertEq(myContract.counter(), 1);
        myContract.dec();
        assertEq(myContract.counter(), 0);
    }

    function testFailDecrementNotOwner() public {
        vm.prank(address(0));
        myContract.dec();
    }
}
