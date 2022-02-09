Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller=> "director", :action=> "index" })

  get("/directors/eldest", { :controller=> "director", :action=> "wisest" })

  get("/directors/youngest", { :controller=> "director", :action=> "dumbest" })
end
