pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TTTR is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TTTR(address _owner)  UpgradeableToken(_owner) {
    name = "TTTR";
    symbol = "TTR";
    totalSupply = 100000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}