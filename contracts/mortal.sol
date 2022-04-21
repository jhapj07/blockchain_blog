// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.9.0;

contract mortal {
    /* Define variable owner of the type address */
    address payable public owner;

    /* This function is executed at initialization and sets the owner of the contract */
    constructor() public { owner = msg.sender; }
    
    /* Restricted to owner */
    modifier restricted { require(msg.sender == owner); _; }
    
    /* Function to recover the funds on the contract */
    function kill() restricted public { selfdestruct(owner); }
    
    /* Function to transfer ownership */
    function transfer(address payable _newOwner) restricted public { owner = _newOwner; }
}