import { DONATE_SERVER_URL } from "@/utils/urls";
import axios from "axios";
import { useQuery } from "react-query";
import * as queryKeys from "@/constants/queryKeys";
import { Donation } from "./../../types/Donation";

const fetcher = (search: string) =>
  axios
    .get(DONATE_SERVER_URL + `/board/search`, {
      params: {
        query: search,
      },
    })
    .then(({ data }) => {
      const response = data.data as Donation[];
      return response;
    })
    .catch((err) => console.log(err));

const useDonateSearchQuery = (search: string) => {
  return useQuery([queryKeys.DONATE_SEARCH, search], () => fetcher(search), {
    enabled: !!search,
  });
};

export default useDonateSearchQuery;
