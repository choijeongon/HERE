import Web3 from "web3";
import { HERE_ERC_721_ABI, HERE_ERC_721_CA } from "@/constants/blockchain";

export const web3 = new Web3(window.ethereum);

export const hereContract = new web3.eth.Contract(
  HERE_ERC_721_ABI,
  HERE_ERC_721_CA,
);
