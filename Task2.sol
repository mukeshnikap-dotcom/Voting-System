// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract votingSystem{
    address owner;
    uint vote1 = 0;
    uint vote2 = 0;
    mapping(address => bool) voted;

    constructor(){
        owner = msg.sender;
    }
    enum status{Off,On}
    status public votingStatus = status.Off;
    
    modifier onlyAdmin(){
        require(msg.sender == owner,"Only Admin can call this function");
        _;
    }

    function votingStart()onlyAdmin public{
        votingStatus = status.On;
    }
    function votingEnd()onlyAdmin public{
        votingStatus = status.Off;
    }
    function vote_Candidate_1()public returns(string memory){
        require(votingStatus == status.On,"Voting is not started yet");
        require(!voted[msg.sender],"Can't vote more than once");
        voted[msg.sender] = true;
        vote1++;
        return "Voted for Candidate 1";
    }
    function vote_Candidate_2()public returns(string memory){
        require(votingStatus == status.On,"Voting is not started yet");
        require(!voted[msg.sender],"Can't vote more than once");
        voted[msg.sender] = true;
        vote2++;
        return "Voted for Candidate 2";
    }
    function checkVotes()public view returns(uint,uint){
        return(vote1,vote2);
    }
}