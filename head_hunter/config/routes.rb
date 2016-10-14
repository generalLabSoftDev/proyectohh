Rails.application.routes.draw do

  resources :charges do
  	resources :competencies
  end

  root 'charge#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
