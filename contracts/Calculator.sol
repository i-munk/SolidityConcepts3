// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AbstractCalculator.sol";

contract Calculator is AbstractCalculator {
    function calculate(uint256 a, uint256 b, string memory operation) public pure returns (uint256) {
        bytes32 op = keccak256(abi.encodePacked(operation));
        if (op == keccak256("add")) {
            return add(a, b);
        } else if (op == keccak256("subtract")) {
            return subtract(a, b);
        } else if (op == keccak256("multiply")) {
            return multiply(a, b);
        } else if (op == keccak256("divide")) {
            return divide(a, b);
        } else {
            revert("Invalid operation");
        }
    }
}
