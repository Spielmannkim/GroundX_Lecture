contract Ballot {
    // 이벤트를 사용하면 실시간으로 누군가 투표를 하는 트랜잭션을 했을 경우 컨트랙트로 이 트랜잭션들의 로그들을 확인 할 수 있다.
    // Voted는 (투표자의지갑주소, 안건번호)를 알고 싶어하는 이벤트다.
    event Voted (address voter, uint proposal);
    function vote(uint proposal) public {
        ...
        // emit이라는 키워드를 이용해서 msg.sender가 어느 안건에 투표했는지 알려주는 이벤트를 실행시킬 것이다.
        emit Voted(msg.sender, proposal);
    }
}
