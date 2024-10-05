// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Uint256ToHexString {
    function uint256ToHexString(uint256 input) external pure returns (string memory output) {
        bytes memory byteStr = new bytes(66);
        byteStr[0] = '0';
        byteStr[1] = 'x';

        bytes memory AL = "0123456789ABCDEF";
        bytes32 byteInput = bytes32(input);
        for (uint256 i = 0; i < 32; i++) {
            byteStr[2 + i * 2] = AL[uint8(byteInput[i] >> 4)];
            byteStr[3 + i * 2] = AL[uint8(byteInput[i] & 0x0f)];
        }

        output = string(byteStr);
    }
}