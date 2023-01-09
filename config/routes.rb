Rails.application.routes.draw do

  get("/", {:controller => "application", :action => "index"})
  post("/submit_text", {:controller => "application", :action => "generate"})

end
