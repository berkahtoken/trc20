pragma solidity ^0.5.8;

import "./Context.sol";
import "./ITRC20.sol";
import "./BaseTRC20.sol";

contract BerkahToken is ITRC20, TRC20Detailed {
    constructor(address gr) public TRC20Detailed("Berkah Token", "BERKAH", 18){
        require(gr != address(0), "invalid gr");
        _mint(gr, 99999 * 10 ** 18);
    }
}