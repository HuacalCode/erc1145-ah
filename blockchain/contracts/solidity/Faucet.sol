// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "../../node_modules/@openzeppelin/contracts/token/ERC1155/IERC1155.sol"; 

contract Faucet {
    
    //State Variables
    address private contractOwner;
    address private armoryAddress;

    //Events
    event newAccountFunded(address);

    constructor(address addArmory) public{
        contractOwner = msg.sender;
        armoryAddress = addArmory;
    }

    function fundAccount(address _newAccountFunded) external{
        //can fund account just one time
        IERC1155(armoryAddress).safeTransferFrom(address(this), _newAccountFunded, 0, 10000, "");
        emit newAccountFunded(_newAccountFunded);
    }

}