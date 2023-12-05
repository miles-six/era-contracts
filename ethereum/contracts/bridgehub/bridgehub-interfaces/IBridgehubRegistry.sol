// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "./IBridgehubBase.sol";
import "../../state-transition/state-transition-interfaces/IZkSyncStateTransition.sol";
import "../../common/interfaces/IAllowList.sol";
import "../../common/libraries/Diamond.sol";

interface IBridgehubRegistry {
    function newChain(uint256 _chainId, address _stateTransition, uint256 _salt) external returns (uint256 chainId);

    function newStateTransition(address _stateTransition) external;

    // KL todo: chainId not uin256
    event NewChain(uint16 indexed chainId, address stateTransition, address indexed chainGovernance);
}
