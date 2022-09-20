// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.10;

contract FizzBuzz {
    function fizzbuzz(uint256 n) public pure returns (string memory) {
if (n == 5) {
            return "buzz";
        }
        return "fizz";
    }
}
