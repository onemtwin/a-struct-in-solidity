// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract tesla_data{
    struct tesla{
        string model;
        uint year;
        string  color;
        uint mileage;
        string vin;

    }
    // we can create an array of structs
    tesla[] public tesla_struct_array_name;

    // create a function that adds data of the individual teslas in the individual tesle-structs
    function add_struct_tesla_data(string memory model,uint year,string memory color,uint mileage,string memory vin) public {
        tesla memory new_tesla=tesla(
            {
                model:model,
                year:year,
                color:color,
                mileage:mileage,
                vin:vin
            }
        );
        tesla_struct_array_name.push(new_tesla);
    }
}
