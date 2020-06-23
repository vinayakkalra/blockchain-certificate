pragma solidity ^0.5.13;
pragma experimental ABIEncoderV2;

import "./EIP712MetaTransaction.sol";

contract Certificate is EIP712MetaTransaction("Certificate","1") {
    address public owner;
    string public ownerName;
    string public ownerMarks;
    string public certificateIssueDate;
    function setValues(string memory _ownerName, string memory _ownerMarks, string memory _certificateIssueDate) public {
        owner = msgSender();
        ownerName = _ownerName;
        ownerMarks = _ownerMarks;
        certificateIssueDate = _certificateIssueDate;
    }
}