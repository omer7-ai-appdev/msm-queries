Rails.application.routes.draw do
  # user visits /directors/

  get("/", { :controller => "application", :action => "homepage" }) 

  
  get("/directors/youngest", { :controller => 
  "directors", :action => "greenest" })

  get("/directors/eldest", { :controller => 
  "directors", :action => "wisest" })

  
  
  get("/directors/", { :controller => :"directors", :action => "index" })

  get("/directors/:an_id", { :controller => 
  "directors", :action => "director_details" })


  

  get("/movies/", { :controller => :"movies", :action => "index" })

  get("/movies/:an_id", { :controller => 
  "movies", :action => "show" })




end
