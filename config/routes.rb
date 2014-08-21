Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'chapters#index'})
  match('chapters', {:via => :get, :to => 'chapters#index'})
  match('chapters/new', {:via => :get, :to => 'chapters#new'})
end
