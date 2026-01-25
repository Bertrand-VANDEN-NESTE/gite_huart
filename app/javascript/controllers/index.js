import { application } from "./application"

// Enregistre manuellement les contrôleurs ici :
import CarouselController from "./carousel_controller";
import CarouselThreeController from "./carousel_three_controller";
import LightboxController from "./lightbox_controller";

application.register("carousel", CarouselController)
application.register("carousel-three", CarouselThreeController)
application.register("lightbox", LightboxController)
