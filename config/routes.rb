Rails.application.routes.draw do
  get("/", {:controller => "home", :action => "homepage"})

  get("/dice/2/6", {:controller => "dicerolls", :action => "twosix"})

  get("/dice/2/10", {:controller => "dicerolls", :action => "twoten"})

  get("/dice/1/20", {:controller => "dicerolls", :action => "onetwenty"})

  get("/dice/5/4", {:controller => "dicerolls", :action => "fivefour"})

  get("/dice/50/6", {:controller => "dicerolls", :action => "fiftysix"})

  get("/dice/:quantity/:value", {:controller => "dicerolls", :action => "any"})
end
