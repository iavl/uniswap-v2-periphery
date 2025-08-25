// script/DeployRouter.sol
// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity =0.6.6;

import "forge-std/Script.sol";
import "../contracts/UniswapV2Router02.sol";

contract DeployRouter is Script {
    function run() external {
        address factory = 0x34656BC987ef205Da35c2a424A92c9A934bDE378;
        address weth = 0x87c0DD2AabbB470a63579F3850860e1647c4edb4;
        
        vm.startBroadcast();
        
        UniswapV2Router02 router = new UniswapV2Router02(factory, weth);
        
        vm.stopBroadcast();
        
        console.log("Router deployed at:", address(router));
    }
}