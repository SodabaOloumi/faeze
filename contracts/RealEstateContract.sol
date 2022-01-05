// SPDX-License-Identifier: MIT
pragma solidity >=0.5.16 <0.9.0;
///@title for saving of properties of the land of a country
///@notice you can use this contract for registraton of lands and selling them
///@dev all function calls in this contract are currently implemented without side effects.
import "./SafeMath.sol";


contract RealEstateContract{
 //Declare the struct
    // Property struct keeps the information of the land

    struct Estate {
     uint id;
     address ownerAddress;
     string landOwnerName;
     string location;
     uint cost;
     uint area;
     uint lengthLand;
     uint widthLand;
    }

    //set the owner of the contract to whoever deployed it, in this contract it is the government
       address public owner;
       uint public totalEstateCounter;

       constructor()
    {
      owner = msg.sender;
      totalEstateCounter = 0;
    }
     //Modifier
    //for functions to be available only to the government ,create a modifier called isOwner
     modifier isOwner
    {
        require(msg.sender == owner);
        _;
    }
    event Register(address  _owner, uint _id);
    event Transfer(address indexed _from, address indexed _to, uint _id);

    ///@notice SafeMath is a library for mathematical operations
 using SafeMath for uint;
  //Mapping
//link addresses their property structs through this mapping
mapping (address => Estate) public estates;


///@notice getArea uses SafeMath's function to return area of the land
function getArea(uint _lengthLand , uint _widthLand) internal pure returns(uint){

    uint area = SafeMath.mul(_lengthLand, _widthLand);
    return area;
    }
///@notice registerproperty function uses details of struct to register the land
//push the property to the government’s properties mapping and emit the register event.
function registerEstate(address _landOwner , string memory _landOwerName,string memory _location, uint _cost ,uint _lengthLand , uint _widthLand)  public isOwner
   isOwner {
        totalEstateCounter = totalEstateCounter + 1;
        uint Area = getArea(_lengthLand, _widthLand);
       estates[_landOwner] = Estate(
            {
                id: totalEstateCounter,
                ownerAddress: _landOwner,
                landOwnerName: _landOwerName,
                location: _location,
                cost: _cost,
                lengthLand : _lengthLand,
                widthLand: _widthLand,
                area : Area
            });
        emit Register(_landOwner, totalEstateCounter);
}

///@notice transferProperty function is used for transfering the property
function transferEstate(address _buyer, address _seller, uint _ID , string memory sellerName ) public isOwner returns (bool){
            require(estates[_seller].id == _ID);
              estates[_buyer] = Estate (
                  {
                    ownerAddress:_buyer,
                    landOwnerName:sellerName,
                    location: estates[_seller].location,
                    cost: estates[_seller].cost,
                    lengthLand:estates[_seller].lengthLand,
                    widthLand: estates[_seller].widthLand,
                    area: estates[_seller].area,
                    id: _ID
                  });
                delete estates[_seller];

                emit Transfer(_seller, _buyer, _ID);
                return true;
}
    ///@notice getProperties function is used to view the property details of someone’s account
function getEstate(address _estateOwner) public view returns (uint ,string memory, string memory, uint, uint ,uint)
    {
        Estate memory e = estates [_estateOwner];
        return(e.id , e.landOwnerName, e.location, e.cost, e.lengthLand, e.widthLand);
}
    ///@notice getNoOfProperties function is used to retern the number of properties the account has
function getNumberOfEstates() public  view returns (uint)
    {
        return totalEstateCounter;
}
function findEstateId(address _landOwner) public view returns(uint){
      return (estates [_landOwner].id);
}
}