// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract EtherUnits {
    
   address _owner;
    constructor () {
        _owner = msg.sender;
    }
    modifier onlyOwner() {
       require(_owner == msg.sender);
       _;
    }
    function transferOwnerShip(address _newOwner) public onlyOwner{
       _owner = _newOwner;
    }
    uint public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;
}
