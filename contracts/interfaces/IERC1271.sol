// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

interface IERC1271 {
    function isValidSignature(bytes32 hash, bytes memory signature) external view returns (bytes4 magicValue);
}
