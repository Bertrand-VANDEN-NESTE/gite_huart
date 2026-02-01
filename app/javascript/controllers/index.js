import { application } from "./application"

import BurgerController from "./burger_controller"
import ZoomBackgroundController from "./zoom_background_controller"
import LightboxController from "./lightbox_controller"
import CarouselThreeController from "./carousel_three_controller";

application.register("burger", BurgerController)
application.register("zoom-background", ZoomBackgroundController)
application.register("lightbox", LightboxController)
application.register("carsouel-three",CarouselThreeController)
