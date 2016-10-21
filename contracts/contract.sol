pragma solidity ^0.4.2;

import "lib/std.sol";
import "lib/oraclizeAPI_0.4.sol";

contract Contract is mortal, usingOraclize {

  string public ETHXBT;

  function Contract() {
    oraclize_setNetwork(networkID_consensys);
  }
  
  function __callback(bytes32 myid, string result) {
    log0('callback');
    if (msg.sender != oraclize_cbAddress()) throw;
    log0('set result');
    ETHXBT = result;
    update();
  }
  
  function update() payable {
    oraclize_query(10, "URL", "json(https://poloniex.com/public?command=returnTicker).BTC_ETH.last");
  }
}