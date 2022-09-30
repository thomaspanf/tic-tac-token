// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.13;

contract TicTacToken {
    string[9] public board; 

    function getBoard() public view returns (string[9] memory) {
        return board; 
    }

    function markSpace(uint256 space, string calldata symbol) public {
        require(_validSymbol(symbol), "Invalid symbol"); 
        board[space] = symbol; 
    }

    function _validSymbol(string calldata symbol) internal pure returns (bool) {
        return _compareStrings(symbol, "X") || _compareStrings(symbol, "O");
    }
    function _compareStrings(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b)); 
    }

}