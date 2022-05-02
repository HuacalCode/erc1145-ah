// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "../../node_modules/@openzeppelin/contracts/token/ERC1155/IERC1155.sol"; 

contract Faucet {
    
    //State Variables
    address private contractOwner;
    address private galleryAddress;

    //Events
    event newAccountFunded(address);

    constructor(address addGallery) public{
        contractOwner = msg.sender;
        galleryAddress = addGallery;
    }

    function fundAccount(address _newAccountFunded) external{
        //can fund account just one time
        IERC1155(galleryAddress).safeTransferFrom(address(this), _newAccountFunded, 2, 1, "0x0");
        emit newAccountFunded(_newAccountFunded);
    }

}