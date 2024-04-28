Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/youngest", {:controller => "directors", :action => "junior"})
  get("/directors/eldest", {:controller => "directors", :action => "senior"})
  get("/directors/:director_id", {:controller => "directors", :action => "show"})

  get("/movies", {:controller => "movies", :action => "index"})
  get("/movies/:movie_id", {:controller => "movies", :action => "show"})

  get("/actors", {:controller => "actors", :action => "index"})
  get("/actors/:actor_id", {:controller => "actors", :action => "show"})
end
