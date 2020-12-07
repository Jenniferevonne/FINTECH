pragma solidity ^0.5.0;

import "./PupperCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

// @TODO: Inherit the crowdsale contracts
contract PupperCoinSale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale {
    

    constructor(
        // @TODO: Fill in the constructor parameters!
        uint rate,
        uint goal,
        uint startime,
        uint endtime, // rate in TKNbits
        address payable wallet, // sale beneficiary
        PupperCoin token // the PupperCoin;
    )
    
        // @TODO: Pass the constructor parameters to the crowdsale contracts.
        Crowdsale(rate, wallet, token)
        
        MintedCrowdsale()
        
        CappedCrowdsale(goal)
        
        TimedCrowdsale(startime,endtime)
        
        RefundablePostDeliveryCrowdsale()
        
        public
    {
        // constructor can stay empty
    }
}

contract PupperCoinSaleDeployer {

    address public token_sale_address;
    address public token_address;

    constructor(
        // @TODO: Fill in the constructor parameters!
        uint rate, goal, starttime, endtime, // rate in TKNbits
        address payable wallet // sale beneficiary;

    )
    
        public
    {
        // @TODO: create the PupperCoin and keep its address handy
        PupperCoin token = new PupperCoin(PupperCoin, PUP, 0);
        token_address = address(token);

        // @TODO: create the PupperCoinSale and tell it about the token, set the goal, and set the open and close times to now and now + 24 weeks.
        PupperCoinSale pupper_sale = new PupperCoinSale(1, wallet, token);
        token_sale_address = address(token_sale);
        close times to now and now + 24 weeks.
        PupperCoinSale pupper_sale = new PupperCoinSale(1, 100, now, now =+ 5 minutes, 0x5FA0B7Ff981025fDFAB0c4d7689206ceB69C19D0, token);
        pupper_sale_address = address(pupper_sale);
        // make the PupperCoinSale contract a minter, then have the PupperCoinSaleDeployer renounce its minter rol
          token.addMinter(pupper_sale_address);
        token.renounceMinter();
    }
}