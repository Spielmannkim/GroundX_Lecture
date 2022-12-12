contract Ballot {
    // msg.sender는 이 컨트랙트를 배포한사람의 주소
    // chairperson = msg.sender; 따라서 chairperson(의장)은 이 컨트랙트를 배포한 사람
    constructor() public { chairperson = msg.sender; }
    address chairperson; // chairperson의 주소
    modifier onlyChair {
        // require뒤에(a,b) 중 a에 해당하는 값이 true면 넘어가고 false면 b를 띄워주면서 실행을 중지함.
        require(msg.sender == chairperson, "only the chairperson can call this function.");
        _;
    }
    function giveRightToVote(address to) public onlyChair {
        // 따라서 투표권을 줄 수 있는 사람은 chairperson(컨트랙트배포자)이다.
        // 'onlyChair' modifier ensures that this function is called by the chairperson
    }
}
