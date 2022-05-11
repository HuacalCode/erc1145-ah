// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "../../node_modules/@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
//import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";

contract Armory is ERC1155 {

    uint256 public constant GOLD = 0;
    uint256 public constant WOODEN_SWORD = 1;
    uint256 public constant WOODEN_ARMOR = 2;
    uint256 public constant WOODEN_RING = 3;
    uint256 public constant IRON_SWORD = 4;
    uint256 public constant IRON_ARMOR = 5;
    uint256 public constant IRON_RING = 6;
    uint256 public constant IRON_STAFF = 7;
    uint256 public constant IRON_SHIELD = 8;
    uint256 public constant IRON_NECKLACE = 9;
    uint256 public constant MITHRIL_SWORD = 10;
    uint256 public constant MITHRIL_SHIELD = 11;
    uint256 public constant MITHIRL_NECKLACE = 12;
    uint256[] internal ArrItems1;
    uint256[] internal ArrItems2;
    uint256[] internal ArrValues;

    bool used = false;

    constructor(address faucetAddress) public ERC1155("https://game.example/api/item/{id}.json") {
        _mint(faucetAddress, GOLD, 100**18, "");
    }

    function itsDangerousOutside(address player1, address player2) public {
        require(used == false, "WAR: Already items were given");
        ArrItems1.push(WOODEN_SWORD);
        ArrItems1.push(WOODEN_ARMOR);
        ArrItems1.push(WOODEN_RING);
        ArrItems1.push(IRON_SWORD);
        ArrItems1.push(IRON_ARMOR);
        ArrItems1.push(IRON_RING);
        ArrItems2.push(IRON_STAFF);
        ArrItems2.push(IRON_SHIELD);
        ArrItems2.push(IRON_NECKLACE);
        ArrItems2.push(MITHRIL_SWORD);
        ArrItems2.push(MITHRIL_SHIELD);
        ArrItems2.push(MITHIRL_NECKLACE);
        ArrValues.push(uint256(1));
        ArrValues.push(uint256(1));
        ArrValues.push(uint256(1));
        ArrValues.push(uint256(1));
        ArrValues.push(uint256(1));
        ArrValues.push(uint256(1));
        _mintBatch(player1, ArrItems1, ArrValues, "");
        _mintBatch(player2, ArrItems2, ArrValues, "");
        used = true;
    }
}