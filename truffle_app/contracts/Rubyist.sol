pragma solidity ^0.4.24;

import "./Ownable.sol";

contract Rubyist is Ownable {
	mapping (address => string) rubyists;

	/* event Transfer(address indexed _from, address indexed _to, uint256 _value);

	constructor() public {
		balances[tx.origin] = 10000;
	} */

	function get(address addr) public view returns(string) {
		return rubyists[addr];
	}

	function create(string name, address addr) public onlyOwner {
		rubyists[addr] = name;
	}
}
