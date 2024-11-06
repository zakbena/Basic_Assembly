// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract AssemblyError {
    function yul_for_loop(uint x) public pure returns (uint z) {
        assembly {
            for {
                let i := 0
            } lt(i, 10) {
                i := add(i, 1)
            } {
                z := add(z, 1)
            }
        }
    }

    function yul_while_loop() public pure returns (uint z) {
        assembly {
            let i := 0

            for {

            } lt(i, 10) {

            } {
                i := add(i, 1)
                z := add(z, 1)
            }
        }
    }

    function yul_sum(uint n) public pure returns (uint z) {
        assembly {
            for {
                let i := 1
            } lt(i, n) {
                i := add(i, 1)
            } {
                z := add(z, i)
            }
        }
    }

    //  calculate x**n where n = 2**k
    function pow2k(uint x, uin n) public pure returns (uint z) {
        require(x > 0; "x = 0");
        assembly {
            z := x
            for{}  gt(n, 1){} {
                z := mul(z, z)
                n := div(n, 2)
            }
        }
    }
}
