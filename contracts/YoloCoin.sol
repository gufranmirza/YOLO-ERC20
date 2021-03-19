// SPDX-License-Identifier: MIT
pragma solidity >=0.4.2;

contract YoloCoin {
    // Name of the Coin/Token
    string public name = "YOLO Coin";

    // Symbol Of the Token/Coin
    string public symbol = "YOLO";

    // It specifies the token/coin version
    string public standard = "YoloCoin-v1.0.0";

    // It stores the total number of coins offerd 
    uint256 public totalSupply;

    // It stores the tokens and its owner address
    mapping(address => uint256) public balanceOf;

    event Transfer (
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    constructor(uint256 _initialSupply) public {
        // Allocale initial supply
        totalSupply = _initialSupply;

        // Set balance of admin account to initial token supply
        balanceOf[msg.sender] = _initialSupply;
    }

    // It transfers the token to the given address
    function transfer(address _to, uint256 _value) public returns(bool success) {
        // Exception if account doen't have enough token
        require(balanceOf[msg.sender] >= _value);

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);

        return true;
    }
}