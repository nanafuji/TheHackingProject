Rails.application.routes.draw do

  root 'static_pages#home'
  get 'static_pages/home'
  get '/contact',	to: 'static_pages#contact'
  get '/about',		to: 'static_pages#about'

#  get '/about/(:who)',	to: 'static_pages#about'	as: 'who'
  get '/about/you',		to: 'static_pages#you',		as: 'you'
  get '/about/mypair',	to: 'static_pages#mypair',	as: 'mypair'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
