// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import "./libraries/NonFungibleToken.sol";

contract DSCSampleNFT is NonFungibleToken {

    struct TokenInfo {
        string name;
    }
    TokenInfo[] public tokens;

    constructor() NonFungibleToken("DSCSampleNFT", "SAMPLE", "1") {}

    function mint(string memory name) external returns (uint256 id) {
        id = tokens.length;

        tokens.push(
            TokenInfo({
                name: name
            })
        );

        _mint(msg.sender, id);
    }

    function burn(uint256 id) external {
        require(msg.sender == ownerOf(id));
        _burn(id);
    }
}
