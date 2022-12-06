pragma solidity 0.8.0;

contract SimpleStorage {
    uint storedData; // 상태
    function set/*값을 지정*/(uint x)/*인풋값(x) 지정(타입을 지정해서 여기서 타입은 uint)*/ public/*public만 읽을 수 있다.*/ { //함수
        storedData = x; // 함수가 하는 일(storedData라는 변수에 x값을 대입한다)
    }
    function get/*값을 가져온다*/()/*괄호가 비어져있는 이유는 인풋이 필요 없이 함수 실행 가능*/ public/*위와 같음*/ view/*상태를 변경하지 않는다(트랜잭션 없이 실행 가능)*/ returns (uint)/*uint타입의 값을 결과로 받을 수 있다.*/ { //함수
        return storedData; // 함수의 가장 마지막에 return을 사용함(함수가 실행된 시점의 storedData라는 변수에 저장된 값을 이 함수 실행한 사람에게 돌려줌)
    }
}

// uint = 부호가 없는(unsigned) 정수(integer) (양의정수)
