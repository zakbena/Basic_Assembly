// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

contract AssemblyVariable {
    function yul_let() public pure returns (uint z) {
        assembly {
            let x := 123
            z := 456
        }
    }
}
