// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyToken is ERC721{
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    uint256 public maxSupply = 10;

    constructor() ERC721("MyToken", "MTK") {}

    function safeMint(address to) public {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }

    function totalSupply() public view returns (uint256) {
    return _tokenIdCounter.current();
  }
}

// Echidna test here
contract TestMyToken is MyToken{
    function echidna_test_supply() public view returns(bool){
        return totalSupply() <= maxSupply;
    }
}