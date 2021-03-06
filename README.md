# Gas estimation for optimistic verification of bls 

https://github.com/kilic/evmbls/

## Pessimistic verification:

```
verify single signature:: 114759
verify signature for 10 distinct message: 435808
verify signature for 20 distinct message: 790662
verify signature for 30 distinct message: 1145592
verify signature for 40 distinct message: 1500599
verify signature for 50 distinct message: 1855682
verify signature for 60 distinct message: 2210842
verify signature for 70 distinct message: 2566078
verify signature for 80 distinct message: 2921391
verify signature for 90 distinct message: 3276781
verify signature for 100 distinct message: 3632247
```

## Optimistic saving

```
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
```

Gas spending for 1 pk and message - `201441`
