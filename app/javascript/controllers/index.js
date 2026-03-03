import { application } from "./application"

// Tes contrôleurs Stimulus
import BurgerController from "./burger_controller"
import LightboxController from "./lightbox_controller"
import ZoomBackgroundController from "./zoom_background_controller"
import CarouselThreeController from "./carousel_three_controller"
import ParallaxController from "./parallax_controller"
import RevealController from "./reveal_controller"

// Enregistrement
application.register("burger", BurgerController)
application.register("lightbox", LightboxController)
application.register("zoom-background", ZoomBackgroundController)
application.register("carousel-three", CarouselThreeController)
application.register("parallax", ParallaxController)
application.register("reveal", RevealController)
