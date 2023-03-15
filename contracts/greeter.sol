//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.14;
contract Greeter {
    string private greeting;
    
constructor() {
        greeting = "_greeting";
    }
function greet() public view returns (string memory) {
        return greeting;
    }
function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }
}
