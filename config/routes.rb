Rails.application.routes.draw do
  #get("/", controller: "home", action: "home_action")

  get("/dice/:number/:sides", controller: "roll", action: "roll_action")
  
end
