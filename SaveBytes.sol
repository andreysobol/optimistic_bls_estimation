pragma solidity >=0.8.0 <0.9.0;

contract SaveBytes {
    
    uint256[4][] pubkeys;
    uint256[2][] messages;

    function save(
        uint256[4][] calldata _pubkeys,
        uint256[2][] calldata _messages
    ) public {
        
        pubkeys = _pubkeys;
        messages = _messages;

    }

}
