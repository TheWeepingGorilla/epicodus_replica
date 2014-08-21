Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'chapters#index'})
  match('chapters', {:via => :get, :to => 'chapters#index'})
  match('chapters/new', {:via => :get, :to => 'chapters#new'})
  match('chapters', {:via => :post, :to => 'chapters#create'})
  match('/chapters/:id', {:via => :get, :to => 'chapters#show'})
  match('/chapters/:id', {:via => [:patch, :put], :to => 'chapters#update'})
  match('/chapters/:id/edit', {:via => :get, :to => 'chapters#edit'})
  match('/chapters/:id', {:via => :delete, :to => 'chapters#destroy'})

  match('sections', {:via => :get, :to => 'sections#index'})
  match('sections/new', {:via => :get, :to => 'sections#new'})
  match('sections', {:via => :post, :to => 'sections#create'})
  match('/sections/:id', {:via => :get, :to => 'sections#show'})
  match('/sections/:id', {:via => [:patch, :put], :to => 'sections#update'})
  match('/sections/:id/edit', {:via => :get, :to => 'sections#edit'})
  match('/sections/:id', {:via => :delete, :to => 'sections#destroy'})
end
