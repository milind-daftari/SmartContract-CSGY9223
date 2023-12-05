// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.21;

/// @title A simple escrow contract where any user can deposit 0.001 ETH and Bob withdraws after a time delay.
contract SimpleEscrow {
    address payable public alice;
    address payable public constant bob = payable(0xECf74C19215C8DD2BAF16AD3a6eC1A25386d813c);
    uint256 public depositTime;
    bool public isFunded;

    uint256 public constant depositAmount = 1e15; // 0.001 ETH in wei

    event Deposit(address indexed from, uint256 amount, uint256 depositTime);
    event Withdrawal(address indexed to, uint256 amount);

    modifier onlyBob() {
        require(msg.sender == bob, "Only Bob can withdraw funds.");
        _;
    }

    function deposit() external payable {
        require(!isFunded, "Contract is already funded.");
        require(msg.value == depositAmount, "Deposit must be exactly 0.001 ETH.");

        alice = payable(msg.sender);
        depositTime = block.timestamp;
        isFunded = true;
        emit Deposit(msg.sender, msg.value, depositTime);
    }

    function withdraw() external onlyBob {
        require(isFunded, "Contract is not funded.");
        require(block.timestamp >= depositTime + 1 days, "Withdrawal not allowed yet.");

        uint256 balance = address(this).balance;
        require(balance > 0, "No funds to withdraw.");

        (bool success, ) = bob.call{value: balance}("");
        require(success, "Failed to send Ether");
        emit Withdrawal(bob, balance);

        isFunded = false;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
