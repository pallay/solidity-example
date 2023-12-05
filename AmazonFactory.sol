pragma solidity >=0.6.12 <0.9.0;

contract AmazonFactory {

    /** 
     * AmazonFactory
     * @dev prints Hello World String
     */
    
    struct Box {
        string size;
        uint code;
    }

    Box[] public boxes;
 
    function print() public pure returns (string memory) {
        return "Hello World";
    }
    
}