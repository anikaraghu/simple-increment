// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Increment {
    uint256 public number;
    address public owner;

    constructor (address _owner) {
        require(_owner != address(0), "Owner cannot be zero address");
        number = 0;
        owner = _owner;
    }

    function increment() external {
        // TODO: increment number only if called by owner
    }
}