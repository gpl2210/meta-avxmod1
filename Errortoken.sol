// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {

    function performComplexOperation(uint a, uint b) public pure returns (uint) {
        // Use require to ensure that inputs meet certain conditions
        require(a > 0, "Input 'a' must be greater than zero");
        require(b > 0, "Input 'b' must be greater than zero");

        // Perform a complex operation (e.g., multiplication)
        uint result = a * b;

        // Use assert to ensure that the result is not zero
        assert(result != 0);

        // Use revert to explicitly revert the transaction if the result is unexpected
        if (result > type(uint).max / 2) {
            revert("Result is too large");
        }

        // Return the result if all conditions are met
        return result;
    }
}