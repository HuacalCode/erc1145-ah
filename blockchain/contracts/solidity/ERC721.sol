// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "../../node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "../../node_modules/@openzeppelin/contracts/utils/Counters.sol";
//import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";

contract Armory721 is ERC721 {

    uint8 public constant GOLD = 0;
    uint8 public constant WEAPON = 1;
    uint8 public constant ARMOR = 2;
    uint8 public constant ACCESORY = 3;

    using Counters for Counters.Counter;
    Counters.Counter private weaponIds;
    Counters.Counter private armorIds;
    Counters.Counter private accesoryIds;

    mapping (uint256 => Item) weaponList;
    mapping (uint256 => Item) armorList;
    mapping (uint256 => Item) accesoryList;
    
    //Structs used
    struct Item {
        string name;
        uint8 attack;
        uint8 defense;
        uint8 magic;
        uint8 resistence;
        string imgUri;
    }

    constructor(address faucetAddress) public ERC1155("https://game.example/api/item/{id}.json") {
        _mint(faucetAddress, GOLD, 100**18, "");
    }

    function itsDangerousOutside(address player1, address player2, address player3) public {
        weaponIds.increment();
        uint256 newItemId = weaponIds.current();
        weaponList[newItemId] = Item("Wooden Sword", 5, 1, 0, 0, "://");
        _mint(player1, WEAPON, 1, "");

    }
}