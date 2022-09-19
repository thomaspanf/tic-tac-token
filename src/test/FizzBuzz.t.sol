// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../FizzBuzz.sol";

contract FizzBuzzTest is DSTest {
    FizzBuzz internal fizzbuzz;

    function setUp() public {
        fizzbuzz = new FizzBuzz();
    }

    function test_math_is_broken() public {
        uint256 two = 1 + 1;
        assertEq(two, 3);
    }
}
