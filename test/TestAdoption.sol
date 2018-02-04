pragma solidity ^0.4.17;

import 'truffle/Assert.sol';
import 'truffle/DeployedAddresses.sol';
import '../contracts/Adoption.sol';

contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption());
 
    function should_user_can_adopt_pet_by_id() public {
        // given

        // when
        uint returnedId = adoption.adopt(8);

        // then
        Assert.equal(returnedId, 8, 'Adoption of pet Id 8 should be recorded.');
    }

    function should_get_adopter_address_by_pet_id() public {
        address expected = this;

        address adopter = adoption.adopters(8);

        Assert.equal(adopter, expected, 'Owner of pet Id 8 should be recorded.');
    }

    function should_get_adopter_address_by_pet_id_in_array() public {
        address expected = this;

        address[16] memory adopters = adoption.getAdopters();

        Assert.equal(adopters[8], expected, 'Owner of pet Id 8 should be recorded.');
    }
}