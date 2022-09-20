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

    function test_returns_buzz_when_divisible_by_five() public {
        assertEq(fizzbuzz.fizzbuzz(5), "buzz");
    }

    function test_returns_number_as_string_otherwise() public {
        assertEq(fizzbuzz.fizzbuzz(7), "7");
    }
}
