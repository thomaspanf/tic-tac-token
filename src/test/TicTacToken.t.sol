// SPDX-License_identifier: Apache-2.0
pragma solidity 0.8.13;

import "ds-test/test.sol";
import "forge-std/Vm.sol"; 
import "../TicTacToken.sol"; 

contract TicTacTokenTest is DSTest {
    Vm internal vm = Vm(HEVM_ADDRESS); 
    TicTacToken internal ttt;

    function setUp() public {
        ttt = new TicTacToken(); 
    }

    function test_cannot_mark_space_with_Z() public {
        vm.expectRevert("Invalid symbol"); 
        ttt.markspace(0, "Z"); 
    }


    function test_has_empty_board() public {
        for (uint256 i=0; i<9; i++) {
            assertEq(ttt.board(i), ""); 
        }
    }

    function test_get_board() public {
        string[9] memory expected = ["", "", "", "", "", "", "", "", ""];
        string[9] memory actual = ttt.getBoard();

        for (uint256 i=0; i<9; ++i) {
            assertEq(actual[i], expected[i]); 
        }
    }

    function test_can_mark_space_with_X() public {
        ttt.markSpace(0, "X");
        assertEq(ttt.board(0), "X"); 
    }

    function test_can_mark_space_with_O() public {
        ttt.markSpace(0, "O");
        assertEq(ttt.board(0), "O"); 
    }
}