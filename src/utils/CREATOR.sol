// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {console2 as console} from 'forge-std/Test.sol';
// ******* This is for use by the CTF creator only!     *******
// ******* Players do not need to change anything here. *******
library CREATOR {

    uint8 constant internal _challengeId = 0x21; // IMPORTANT: CREATOR TO UPDATE THIS!

    // IMPORTANT: CREATOR TO UPDATE THIS!
    // This function returns true or false if the solution is correct.
    // Write logic that will check if the provided solution is correct
    function verify(address solution) public returns (bool) {
        (bool success, bytes memory result) = solution.call("");
        return (success && abi.decode(result, (uint256)) == 0x69);
    }

    // IMPORTANT: CREATOR TO UPDATE THIS!
    // his function should return the number that should reported for gas for the solution.
    // It could be the measurement of a single function call or multiple.
    function gasReport(address solution)  public returns (uint256 gasUsed) {
        // add logic to report gas cost of the relevant call or calls to the solution
        uint start = gasleft();
        (bool success,) = solution.call("");
        require(success);
        gasUsed = start - gasleft();
    }

    function challengeId() public pure returns (uint8) {
        require(_challengeId != 0xff, "IMPORTANT: CREATOR to update challengeId!");
        return _challengeId;
    }
}