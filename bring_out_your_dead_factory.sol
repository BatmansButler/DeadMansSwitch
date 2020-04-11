pragma solidity ^0.5.0;

import "dead_mans_switch.sol";

contract BringOutYourDeadFactory {
    function newEstate(address oracle, address executor) public payable returns (address estateContract) {
        BringOutYourDead boyd = new BringOutYourDead();
        if(address(0) != executor) {
            boyd.changeExecutor(executor);
        }
        boyd.transferOwnership(msg.sender);
        return address(boyd);
    }
}
