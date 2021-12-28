// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract TestContract{

    address _owner;
    string _name;

    constructor(){
        _owner = msg.sender;
        _name = "Test Contract";
    }

    function getOwner() public view returns(address){
        return _owner;
    }

    function getName() public view returns(string memory){
        return _name;
    }

    function setOwner(address value) public{
        require(msg.sender == _owner);
        _owner = value;
    }

    function setName(string memory value) public{
        require((msg.sender == _owner));
        _name = value;
    }
}