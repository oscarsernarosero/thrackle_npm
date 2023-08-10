// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract A {

 string constant MSG = "Thrackle";

 function getMsg() external pure returns(string memory){
    return MSG;
 }

}