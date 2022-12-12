contract Ballot {
    // struct는 어느 대상을 표현하는 값이 여러개일 때 여러 데이터 타입을 묶어놓기위해 사용함.
    struct Voter {
        // 투표자가 몇표있는지
        uint weight;
        // 투표 했는지 안했는지
        bool voted;
        // 투표권을 누구에게 위임했는지
        address delegate;
        // 어느안건에 투표했는지
        uint vote;
    }
}
