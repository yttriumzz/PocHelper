// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Uint256ToHexString.sol";

contract Uint256ToHexStringTest is Test {
    Uint256ToHexString uint256ToHexString;

    function setUp() public {
        uint256ToHexString = new Uint256ToHexString();
    }

    function testSuccess() public view {
        assertEq(uint256ToHexString.uint256ToHexString(0),                     "0x0000000000000000000000000000000000000000000000000000000000000000");
        assertEq(uint256ToHexString.uint256ToHexString(1),                     "0x0000000000000000000000000000000000000000000000000000000000000001");
        assertEq(uint256ToHexString.uint256ToHexString(99999),                 "0x000000000000000000000000000000000000000000000000000000000001869F");
        assertEq(uint256ToHexString.uint256ToHexString(type(uint256).max - 1), "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE");
        assertEq(uint256ToHexString.uint256ToHexString(type(uint256).max),     "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF");
    }
}