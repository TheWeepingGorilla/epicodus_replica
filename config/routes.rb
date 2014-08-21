Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'tableofcontents#index'})
  match('tableofcontents', {:via => :get, :to => 'tableofcontents#index'})
end
