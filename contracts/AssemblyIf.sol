// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract AssemblyIf {
    function yul_if(uint x) public pure returns (uint z) {
        assembly {
            if lt(x, 10) {
                z := 99
            }
        }
    }

    function yul_switch(uint x) public pure returns (uint z) {
        assembly {
            switch x
            case 1 {
                z := 10
            }
            case 2 {
                z := 2
            }
            default {
                z := 0
            }
        }
    }

    function min(uint x, uint y) public pure returns (uint z) {
        z = y;
        assembly {
            if lt(x, y) {
                z := x
            }
        }
    }

    function max(uint x, uint y) public pure returns (uint z) {
        assembly {
            switch gt(x, y)
            case 1 {
                z := x
            }
            default {
                z := y
            }
        }
    }
}
