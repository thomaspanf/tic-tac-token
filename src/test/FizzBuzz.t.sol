// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.13;

import "ds-test/test.sol";
import "forge-std/Vm.sol"; 
import "../FizzBuzz.sol";

contract FizzBuzzTest is DSTest {
    FizzBuzz internal fizzbuzz;

    Vm public constant vm = Vm(HEVM_ADDRESS); 
    function setUp() public {
        fizzbuzz = new FizzBuzz();
    }

    // function test_math_is_broken() public {
    //     uint256 two = 1 + 1;
    //     assertEq(two, 3);
    // }

    function test_returns_fizz_when_divisible_by_three(uint256 n) public {
        vm.assume(n % 3 == 0);
        vm.assume(n % 5 != 0);
        assertEq(fizzbuzz.fizzbuzz(n), "fizz");
    }
    
    function test_returns_buzz_when_divisible_by_five(uint256 n) public {
        vm.assume(n % 3 != 0);
        vm.assume(n % 5 == 0);
        assertEq(fizzbuzz.fizzbuzz(n), "buzz");
    }

    function test_returns_fizzbuzz_when_divisible_by_three_and_five(uint256 n) public {
        vm.assume(n % 3 == 0);
        vm.assume(n % 5 == 0);
        assertEq(fizzbuzz.fizzbuzz(n), "fizzbuzz");
    }

    function test_returns_number_as_string_otherwise(uint256 n) public {
        vm.assume(n % 3 != 0);
        vm.assume(n % 5 != 0);
        assertEq(fizzbuzz.fizzbuzz(n), Strings.toString(n));
    }
}
