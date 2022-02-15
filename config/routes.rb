Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  
  get("/directors", { :controller=> "director", :action=> "index" })

  get("/directors/eldest", { :controller=> "director", :action=> "wisest" })

  get("/directors/youngest", { :controller=> "director", :action=> "dumbest" })

  get("/directors/:an_id", { :controller=> "director", :action=> "director_details" })

  get("/movies", { :controller=> "movie", :action=> "index" })

  get("/movies/:an_id", { :controller=> "movie", :action=> "movie_details" })

  get("/actors", { :controller=> "actor", :action=> "index" })

  get("/actors/:an_id", { :controller=> "actor", :action=> "actor_details" })

end
