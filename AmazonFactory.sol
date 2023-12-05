pragma solidity >=0.6.12 <0.9.0;

contract AmazonFactory {

    /** 
     * AmazonFactory
     * @dev create a box
     */
    
    uint barcodeLength = 16;
    uint barcodeModulus = 10 ** barcodeLength;

    // declare events
    event BoxCreated(Box x);

    // box object
    struct Box {
        string size;
        uint code;
    }

    Box[] public boxes;

    // Create a box of size @_size and barcode @_barcode
    function _addBoxToBoxes(Box memory box) private {
        boxes.push(box);
    }

    // Create a box of size @_size and barcode @_barcode
    function _createBox(string memory _size, uint _barcode) private pure returns (Box memory) {
        return Box(_size, _barcode);
    }
 
    // Generate a barcode of length @barcodeLength
    function _generateRandomBarcode(string memory _str) public view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % barcodeModulus;
    }

    // Create a sized box of size @_size
    function createSizedBox(string memory _size) public {
        uint randomBarcode = _generateRandomBarcode(_size);
        Box memory box = _createBox(_size, randomBarcode);
        emit BoxCreated(box);
    }
    
}