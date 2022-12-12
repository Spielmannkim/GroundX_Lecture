contract Ballot {
    // enum은 사람보기 좋으라고 쓴다.
    // enum은 바뀌지 않는 값을 정의할 때 쓴다.
    // ex) 요일 -> 월,화,수,목...
    // ex) 상태 -> Active, Inactive
    enum Status {
        Open,
        Closed
    }
}
