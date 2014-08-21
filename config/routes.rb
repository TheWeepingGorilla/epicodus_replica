Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'chapters#index'})
  match('chapters', {:via => :get, :to => 'chapters#index'})
  match('chapters/new', {:via => :get, :to => 'chapters#new'})
  match('chapters', {:via => :post, :to => 'chapters#create'})
  match('/chapters/:id', {:via => :get, :to => 'chapters#show'})
  match('/chapters/:id/edit', {:via => :get, :to => 'chapters#edit'})
end
