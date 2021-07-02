pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    address public minter;

    constructor() payable ERC20("Study Coin", "STD") {
        minter = msg.sender;
    }

    function mint(address _account, uint256 _amount) public {
        require(msg.sender == minter, "User is not the minter : (");
        //mint our new token
        _mint(_account, _amount);
    }
}
