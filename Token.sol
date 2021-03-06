// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.4.16;

import "./TRC20.sol";
import "./TRC20Detailed.sol";

/**
 * @title CNYJ Powered By Defi SHG Platform
 * @dev Very simple TRC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `TRC20` functions.
 */
contract Token is TRC20, TRC20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public TRC20Detailed("CNYJ Powered By Defi SHG Platform", "CNYJ", 6) {
        _mint(msg.sender, 100000 * (6 ** uint256(decimals())));
    }
}