// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Faucet {
    
    //State Variables
    address private contractOwner;

    //Events
    event newAccountFunded(address);

    constructor() public{
        contractOwner = msg.sender;
    }

    function fundAccount() external{
        //can fund account just one time
        emit newAccountFunded(msg.sender);
    }

}