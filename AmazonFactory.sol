pragma solidity >=0.6.12 <0.9.0;

contract AmazonFactory {

    /** 
     * AmazonFactory
     * @dev prints Hello World String
     */
    
    uint barcodeLength = 16;
    uint barcodeModulus = 10 ** barcodeLength;

    struct Box {
        string size;
        uint code;
    }

    Box[] public boxes;

    function _createBox(string memory _size, uint _code) private {
        boxes.push(Box(_size, _code));
    }
 
    function _generateRandomCode(string memory _str) public view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % barcodeModulus;
    }
    
}