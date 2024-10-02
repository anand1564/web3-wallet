//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract{
    uint256 public value;
    address public owner;
    function setValue(uint256 _value) public{
        value=_value;
    }
    function getValue() public view returns(uint256){
        return value;
    }
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender==owner,"You are not the owner");
        _;
    }
    function withdraw() public onlyOwner(){
        payable(owner).transfer(address(this).balance);
    }
    receive () external payable{}
    function getBalance() public view returns(uint256){
        return address(this).balance;
    }
    function sendEther(address payable _to,uint256 _amount)public onlyOwner(){
        _to.transfer(_amount);
    }
}