// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Shop {
    address public owner;
    mapping(address => uint256) public payments;

    constructor() {
        owner = msg.sender;
    }

    function pay() public payable {
        payments[msg.sender] = msg.value;
    }

    function withdrawAll() public {
        address payable _to = payable(owner);
        address _contract = address(this);
        _to.transfer(_contract.balance);
    }
}
