// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Types {
    bool public typBool;
    uint48 public typUint;
    uint256 public maximum;
    uint8 public value = 253;
    string public typString;
    address public typAddress = 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
    mapping(address => uint256) public payments;

    function switchBool(bool _input) public {
        typBool = _input;
    }

    function add(uint8 _input) public {
        typUint += _input;
    }

    function sub(uint8 _input) public {
        typUint -= _input;
    }

    function typeMax() public {
        maximum = type(uint256).max;
    }

    function decrement10() public {
        unchecked {
            value -= 10;
        }
    }

    function setString(string memory _input) public {
        typString = _input;
    }

    function setAddress(address _input) public {
        typAddress = _input;
    }

    function getBalance(address _input) public view returns (uint256) {
        return _input.balance;
    }

    function transferTo(address to, uint256 amount) public {
        address payable _to = payable(to);
        _to.transfer(amount);
    }

    function receiveFunds() public payable {
        payments[msg.sender] += msg.value;
    }
}
