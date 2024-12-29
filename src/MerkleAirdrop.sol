// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract MerkleAirdrop {
    using SafeERC20 for IERC20;
    // some list of addresses
    // allow someone in the list to claim ERC-20 tokens

    /*//////////////////////////////////////////////////////////////
                                 ERRORS
    //////////////////////////////////////////////////////////////*/

    error MerkleAirdrop__InvalidProof();

    /*//////////////////////////////////////////////////////////////
                               VARIABLES
    //////////////////////////////////////////////////////////////*/

    address[] claimers;
    bytes32 private immutable i_merkleroot;
    IERC20 private immutable i_airdropToken;

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Claim(address account, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(bytes32 merkleRoot, IERC20 airdropToken) {
        // some code
        i_merkleroot = merkleRoot;
        i_airdropToken = airdropToken;
    }

    /*//////////////////////////////////////////////////////////////
                                FUNCTION
    //////////////////////////////////////////////////////////////*/

    function claim(address account, uint256 amount, bytes32[] calldata merkleProof) external {
        // calculate using the account and the amount, the hash -> leaf node
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(account, amount))));
        if (!MerkleProof.verify(merkleProof, i_merkleroot, leaf)) {
            revert MerkleAirdrop__InvalidProof();
        }
        emit Claim(account, amount);
        i_airdropToken.safeTransfer(account, amount);
    }
}
