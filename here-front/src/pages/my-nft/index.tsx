import "swiper/css";
import "swiper/css/navigation";
import InstaBtn from "@/components/Button/InstaBtn";
import MyNFTList from "@/features/MyNFT/MyNFTList";
import MyNFTDetailList from "@/features/MyNFT/MyNFTDetailList";
import { RootState } from "@/stores/store";
import { useSelector } from "react-redux";
import MyNFTDetailBackModal from "@/features/MyNFT/MyNFTDetailBackModal";
import QrCodeReader from "@/components/Register/QrCodeReader";
import { saveNFTImage } from "@/utils/saveAsImg";
import { useEffect, useState } from "react";
import useMyNFTListQuery from "@/apis/my-nft/useMyNFTListQuery";
import { FaCameraRetro } from "react-icons/fa";
import { useDispatch } from "react-redux";
import { closeModal } from "@/stores/myNFT/selectedNFT";

export default function MyNFTPage() {
  const [capture, setCapture] = useState<string>("front-capture");

  const { memberId } = useSelector((state: RootState) => state.member);

  const NFTCardBackIndex = useSelector((state: RootState) => {
    return state.selectedNFT.selectedNFT;
  });

  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(closeModal());
  }, []);

  useEffect(() => {
    if (NFTCardBackIndex === -1) {
      setCapture("front-capture");
    } else {
      setCapture("back-capture");
    }
  }, [NFTCardBackIndex]);

  const myNFTList = useMyNFTListQuery("ae4c93d4-67f0-4502-9a0c-04d003ce6f0c");

  return (
    <div className="w-min-[1200px] mobile:w-min-full mobile:w-full">
      <div className="flex h-[calc(100vh-65px)] min-h-630 w-full min-w-[1200px] items-center justify-center mobile:h-[calc(100vh-60px)] mobile:min-h-full mobile:w-full mobile:min-w-full">
        <div className="relative flex h-full w-[1200px] items-center justify-between mobile:w-full mobile:flex-col-reverse mobile:justify-between">
          <div className="absolute right-0 top-20 z-30 mobile:hidden ">
            <InstaBtn
              width={195}
              height={40}
              onClick={() => saveNFTImage(capture)}
              fontSize={18}
            >
              이미지 저장하기
            </InstaBtn>
          </div>
          <FaCameraRetro className="hidden text-red-500 mobile:absolute mobile:top-20 mobile:right-20 mobile:block mobile:h-35 mobile:w-35" />
          <div className="relative flex h-630 w-137 items-center justify-center mobile:h-180 mobile:w-full">
            <MyNFTList myNFTList={myNFTList && myNFTList.data} />
          </div>

          <div className="relative flex w-983 justify-center gap-43 mobile:w-full mobile:items-center">
            <MyNFTDetailList MyNFTList={myNFTList && myNFTList.data} />
          </div>
        </div>
      </div>
      {NFTCardBackIndex !== -1 && <MyNFTDetailBackModal />}
      <div className="mobile:hidden">
        <QrCodeReader />
      </div>
    </div>
  );
}
