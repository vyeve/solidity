// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Types {
    bool public typBool;
    uint48 public typUint;
    uint256 public maximum;
    uint8 public value = 253;

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
}
