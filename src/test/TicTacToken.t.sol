// SPDX-License_identifier: Apache-2.0
pragma solidity 0.8.13;

import "ds-test/test.sol";
import "../TicTacToken.sol"; 

contract TicTacTokenTest is DSTest {
    TicTacToken internal ttt;

    function setUp() public {
        ttt = new TicTacToken(); 
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
}