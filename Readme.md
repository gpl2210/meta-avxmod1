# ExampleContract

## Overview

ExampleContract is a simple Solidity smart contract showcasing the use of require, assert, and revert for input validation and control flow within a function. The contract includes a function called performComplexOperation that performs a complex mathematical operation with specific conditions on the inputs and results.

## License

This contract is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Smart Contract Details

### performComplexOperation Function

#### Description

The performComplexOperation function takes two unsigned integers a and b as inputs, performs a complex operation (e.g., multiplication), and returns the result.

#### Input Requirements

- a: Must be greater than zero.
- b: Must be greater than zero.

#### Control Flow Checks

1. *require Statements:*
    - Ensures that both input values (a and b) are greater than zero. If not, the function reverts with a specific error message for each condition.

2. *assert Statement:*
    - Ensures that the result of the multiplication is not zero. If the result is zero, the function triggers an assertion failure and reverts.

3. *revert Statement:*
    - Checks if the result of the multiplication is greater than half of the maximum value for uint. If true, the function reverts with an error message indicating that the result is too large.

#### Return

- If all input requirements and control flow checks are satisfied, the function returns the result of the complex operation.

## Usage

To use this smart contract, deploy it to a compatible Ethereum network and interact with the performComplexOperation function by providing valid inputs.

### Example

```solidity
// Deploy the contract
ExampleContract example = new ExampleContract();

// Call the performComplexOperation function
uint result = example.performComplexOperation(5, 10);