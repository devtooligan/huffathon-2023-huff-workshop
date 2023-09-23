# Creator Huff CTF Template
Welcome to the Creator Huff CTF Template! This guide will assist you in setting up your CTF challenge repository.

#### TODO: Once you're done setting up, delete this file and then rename [PLAYER_README.md](PLAYER_README.md)
 to README.md to replace this one.

## Initial Setup

Create a New Repository - Start by creating a new repository based on this template and consider setting visibility to private if you will be pushing commits while deving.

## Usage

1. Update the CREATOR.sol File
Make the following changes to the CREATOR.sol file:

 - **_challengeId**: Update the _challengeId with a unique id number provided by the CTF admin.

 - **verify()**: Function: This function should return either true or false based on whether the provided solution is correct. Implement the logic that checks the solution.
 ```solidity
    function verify(string memory solution) public view returns (bool) {
         (,bytes memory data) = solution.call("");
         uint256 answer = abi.decode(data, uint256);
         return answer == 0x69; // the expected response is 0x69
    }
 ```

 - **gasReport()**: Function: This function should return the gas number for the solution. This could be the measurement of a single function call or multiple calls.

2. Update the PLAYER_SOLUTION.huff File (Optional)
If your challenge has a base solution (an optimization challenge, for example), you can update the PLAYER_SOLUTION.huff file as necessary.

3. Finalize the README
As a final step, delete or rename the current README.md and then rename PLAYER_README.md to README.md. Update the new README as needed.

4. Double-Check Your Work
Before making the repository public, ensure that you haven't left in any solutions or other unintended hints.

5. Go Public!
Once you're ready and the CTF has officially begun, change the repository visibility to PUBLIC.

