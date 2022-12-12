contract SocialMedia {
    // struct 안에는 여러가지를 넣을 수 있지만 struct 자기자신은 넣을 순 없다.(Friend를 넣을 수 없다는말)
    struct Friend {
        uint id;
        // 이렇게 mapping도 넣을 수 있다.
        mapping (uint => address) friend;
    }
}
