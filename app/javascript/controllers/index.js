// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { Application } from "stimulus";
import MenuController from "./menu_controller";

const application = Application.start();
application.register("menu", MenuController);