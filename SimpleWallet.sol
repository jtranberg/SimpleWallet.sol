// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/1f0e7cdf0494b4cee4389941b7ce50b767dc3184/contracts/access/Ownable2Step.sol";

contract SimpleWallet is Ownable2Step  {


    function withdrawMoney(address payable _to, uint _amount) public onlyOwner {
        
        _to.transfer(_amount);
    }



    fallback() external payable {

    }

    receive() external payable {

    }
}