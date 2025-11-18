// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ETPAccount {
    string public postcode;
    string public latitude;
    string public longitude;
    uint16 public pricePreference;
    uint16 public distancePreference;

    event ElectricityExported(uint256 period, uint256 exports_);
    event ElectricityImported(uint256 period, uint256 imports_);

    constructor(
        string memory _postcode,
        string memory _lat,
        string memory _lng,
        uint16 _ppref,
        uint16 _dpref
    ) {
        postcode = _postcode;
        latitude = _lat;
        longitude = _lng;
        pricePreference = _ppref;
        distancePreference = _dpref;
    } 

    function setPricePreference(uint16 _ppref) external {
        pricePreference = _ppref;
    }

    function setDistancePreference(uint16 _dpref) external {
        distancePreference = _dpref;
    }

    function storeExports(uint256 period, uint256 exports_) external {
        emit ElectricityExported(period, exports_);
    }

    function storeImports(uint256 period, uint256 imports_) external {
        emit ElectricityImported(period, imports_);
    }
}
