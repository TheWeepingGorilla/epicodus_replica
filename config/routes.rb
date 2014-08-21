Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'chapters#index'})
  match('chapters', {:via => :get, :to => 'chapters#index'})
  match('chapters/new', {:via => :get, :to => 'chapters#new'})
  match('chapters', {:via => :post, :to => 'chapters#create'})
  match('/chapters/:id', {:via => :get, :to => 'chapters#show'})
  match('/chapters/:id', {:via => [:patch, :put], :to => 'chapters#update'})
  match('/chapters/:id/edit', {:via => :get, :to => 'chapters#edit'})
  match('/chapters/:id', {:via => :delete, :to => 'chapters#destroy'})
end
