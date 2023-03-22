import { useState } from "react";

import Lottie from "react-lottie-player";

import sendingHeart from "../../..//public/lottieJson/sending-heart.json";

export default function DonateSendModal() {
  const [count, setCount] = useState<number>(1);

  return (
    <div className="fixed left-[50%] top-[50%] z-50 h-490 w-820 translate-x-[-50%] translate-y-[-50%] rounded-30 border-1 border-pen-0 bg-white text-center mobile:h-400 mobile:w-340">
      <Lottie loop animationData={sendingHeart} play />;
    </div>
  );
}
