// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract AH {
    
    //State Variables
    address private contractOwner;

    //Events
    event newItemListed();
    //event newPug(); Dependiente de tiempo, investigar como manejar esto
    event itemBuyed();

    constructor() public{
        contractOwner = msg.sender;
    }

    function addItem() external{
        emit newItemListed();
    }
    
    /*
    function addPug() external{
        emit newPug();
    }
    */

    function buyItem() external{
        emit itemBuyed();
    }

}