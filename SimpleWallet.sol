// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleWallet {

address public owner;
constructor()  {
    owner = msg.sender;
}
modifier onlyOwner() {
    require(owner == msg.sender, "you are not authorized");
    _;
}

    function withdrawMoney(address payable _to, uint _amount) public onlyOwner {
        
        _to.transfer(_amount);
    }



    fallback() external payable {

    }

    receive() external payable {

    }
}