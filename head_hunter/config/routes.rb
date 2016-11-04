Rails.application.routes.draw do


  resources :forms

  resources :charges do
  	resources :competencies
  end

  root :to => "charges#index"
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
