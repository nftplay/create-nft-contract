// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;
 
import "@openzeppelin/contracts/token/ERC721/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFTPlay is ERC721Burnable{
	
	   using Counters for Counters.Counter;
	
       Counters.Counter private _tokenIds;

       constructor() ERC721("NFT Play", "NFTPLAY") {}
   
       function createNFT(address to, string memory tokenURI) public returns (uint256)
       {
           _tokenIds.increment();   
           uint256 tokenId = _tokenIds.current();
           _mint(to, tokenId);
           _setTokenURI(tokenId, tokenURI);
   
           return tokenId;
       }
}