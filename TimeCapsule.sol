// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract EpochVault {
    struct Capsule {
        string title;
        string message;
        uint256 timestamp;
        uint256 unlockTime;
    }

    mapping(address => Capsule[]) private userVaults;

    event VaultCreated(address indexed owner, string title, uint256 unlockTime);

    function createVault(string memory _title, string memory _message, uint256 _unlockTime) public {
        require(bytes(_title).length > 0, "Judul tidak boleh kosong");
        require(bytes(_message).length > 0, "Pesan tidak boleh kosong");
        require(_unlockTime > block.timestamp, "Waktu buka harus di masa depan");

        userVaults[msg.sender].push(Capsule({
            title: _title,
            message: _message,
            timestamp: block.timestamp,
            unlockTime: _unlockTime
        }));

        emit VaultCreated(msg.sender, _title, _unlockTime);
    }

    function getUserVaults() public view returns (Capsule[] memory) {
        Capsule[] memory vaults = userVaults[msg.sender];
        
        for (uint i = 0; i < vaults.length; i++) {
            if (block.timestamp < vaults[i].unlockTime) {
                vaults[i].message = "LOCKED";
            }
        }
        
        return vaults;
    }
}