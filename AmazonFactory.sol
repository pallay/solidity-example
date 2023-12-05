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

    function _createBox(string memory _size, uint _code) private {
        boxes.push(Box(_size, _code));
    }
 
    function print() public pure returns (string memory) {
        return "Hello World";
    }
    
}