// https://github.com/hyperledger-labs/solang/issues/731
contract TestContract {
    struct Data {
        bytes32 a1;
        bytes32 a2;
    }

    mapping(uint176 => bytes32) Hashes;

    constructor() {}

    function getdata(uint176 id, bool needHash) public view returns (Data memory g) {
        (g.a1, g.a2) = (Hashes[id+1], Hashes[id+2]);
    }
}
