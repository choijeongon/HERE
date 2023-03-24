import NFTCardBack from "@/components/Card/NFTCardBack";
import { RootState } from "@/stores/store";
import { useEffect, useState } from "react";
import { useSelector } from "react-redux";
import { Swiper, SwiperSlide } from "swiper/react";

export default function SelectedSubmitNFTList() {
  const [curIdx, setCurIdx] = useState<number>(0);

  const marginStyle = (index: number) => {
    if (Math.abs(curIdx - index) > 1) return "invisible";
    else if (curIdx > index) return "ml-120 -mr-120";
    else if (curIdx < index) return "-ml-120 mr-120";
    else return "";
  };

  const selectedCardList = useSelector((state: RootState) => {
    return state.submitSelectedNFT.selectedNFT;
  });

  const swiperStyle = `
  .swiper-slide {
    transform: none;
    width: 300px !important;
  }
  .swiper-wrapper {
    align-items: center;
  }
  @media(max-width: 480px){
    .swiper-slide {
      width: 33% !important;
    }
  }
  `;

  return (
    <div>
      <Swiper
        slidesPerView={3}
        centeredSlides={true}
        className="flex h-400 w-900 items-center justify-center"
        css={[swiperStyle]}
      >
        {selectedCardList.map((item, index) => (
          <SwiperSlide
            className={marginStyle(index) + " flex items-center justify-center"}
            key={index}
          >
            {({ isActive }) => {
              useEffect(() => {
                isActive && setCurIdx(index);
              }, [isActive]);

              return (
                <div
                  className={
                    isActive ? "relative flex" : "relative flex blur-sm"
                  }
                  css={[
                    curIdx > index ? { zIndex: 100 } : { zIndex: 100 - index },
                    isActive && { zIndex: 100 },
                  ]}
                >
                  <NFTCardBack
                    height={isActive ? 350 : 300}
                    fontSize={isActive ? 18 : 16}
                  />
                </div>
              );
            }}
          </SwiperSlide>
        ))}
      </Swiper>
    </div>
  );
}
