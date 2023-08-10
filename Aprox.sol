// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract Aprox{

    function divideBy10(uint x) external pure returns(uint y){
        y = x/10;
    }

    function divideBy1000(uint x) external pure returns(uint y){
        y = x/1000;
    }

    function divideBy1M(uint x) external pure returns(uint y){
        y = x/1_000_000;
    }

    function divideBy10B(uint8 x) external pure returns(uint y){
        y = uint256(x)*1_000/10_000;
    }

    function divideBy1000B(uint16 x) external pure returns(uint y){
        y = uint256(x)*1_000/1_000_000;
    }

    function fromFFto100(uint8 x) external pure returns(uint y){
        y = uint8(uint16(x)*100/255);
    }

    function totheZeroPower(uint256 x, uint z) external pure returns(uint256 y){
        y = x**z;
    }

    function totheZeroPowerA(uint256 x, uint z) external pure returns(uint256 y){
        y=1;
        for(uint i; i < z; i++){
            y*x;
        }
        
    }

    function calRewards(uint8 _stakingForUnitsOfTime, uint256 amount, uint128 _rewardRate) external pure returns (uint rewards){
        rewards = (uint256(_stakingForUnitsOfTime) * uint256(_rewardRate) * amount)/1_000_000;
    }
}