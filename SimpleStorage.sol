// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Coin {
    /*address = 앞전 SimpleStorage.sol 에서는 이자리에 uint가 들어가서 양의정수를 입력했다면 지금은 address라서 0x로 시작하는 주소값이 들어감*/
    /*public = 다른 컨트랙트에서 읽을 수 있다.*/
    /*minter = address가 들어가는 변수 이름*/
    address public minter;

    /*mapping (address => uint) = address가 키값, uint가 밸류값으로 맵핑됨*/
    /*balances라는 변수 생성*/
    mapping (address => uint) public balances;

    //나중에 a가 b에게 x만큼 보내는 함수를 사용했을 때 그 사실을 알려주는 이벤트 Sent 생성
    event Sent(address from, address to, uint amount);

    /*constructor()는 생성자 함수로 컨트랙트가 생성될 때 딱 한번만 실행될 수 있다.(발행한 사람만 민팅할 수 있게 하기 위해) */
    constructor() public {
        //minter 상태변수에 msg.sender값을 대입(함수를 실행한 사람의(토큰 주인) 주소)
        minter = msg.sender;
    }
}
