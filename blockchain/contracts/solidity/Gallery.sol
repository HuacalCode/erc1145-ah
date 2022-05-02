// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Gallery is ERC1155 {

    uint256 public constant GOLD = 0;

    constructor(address faucetAddress) public ERC1155("https://game.example/api/item/{id}.json") {
        _mint(faucetAddress, GOLD, 100**18, "");
    }
}