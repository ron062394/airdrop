//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ERC20 {
    function transfer(address to, uint256 amount) external returns (bool);
}

contract AirdropContract {
    ERC20 public token;

    constructor(address _tokenAddress) {
        token = ERC20(_tokenAddress);
    }

    function airdrop(address[] calldata recipients, uint256[] calldata amounts) external {
        require(recipients.length == amounts.length, "Invalid input");

        for (uint256 i = 0; i < recipients.length; i++) {
            require(token.transfer(recipients[i], amounts[i]), "Transfer failed");
        }
    }
}

//0xE27423f4552109371Cd569a5A8B65CD3888F265d
//0x9daBACDae39132ab04f718bf4fB30007eF402748

//0x716741fD562Db04308d7f6d9F24C253133991c1B
//0x765FD25C3fFD4A99b1a07c5d673DC3a294f625a3
//0x9c83a9446448B543231F13FFE925993F19fe5C40