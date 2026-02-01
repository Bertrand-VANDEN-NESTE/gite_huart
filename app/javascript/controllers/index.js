import { application } from "./application"

import BurgerController from "./burger_controller"
import ZoomBackgroundController from "./zoom_background_controller"

application.register("burger", BurgerController)
application.register("zoom-background", ZoomBackgroundController)
