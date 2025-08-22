// script/DeployRouter.sol
// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity =0.6.6;

import "forge-std/Script.sol";
import "../contracts/UniswapV2Router02.sol";

contract DeployRouter is Script {
    function run() external {
        address factory = 0x3bFA4769FB09eefC5a80d6E87c3B9C650f7Ae48E;
        address weth = 0x3bFA4769FB09eefC5a80d6E87c3B9C650f7Ae48E;
        
        vm.startBroadcast();
        
        UniswapV2Router02 router = new UniswapV2Router02(factory, weth);
        
        vm.stopBroadcast();
        
        console.log("Router deployed at:", address(router));
    }
}