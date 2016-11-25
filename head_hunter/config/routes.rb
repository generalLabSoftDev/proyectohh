Rails.application.routes.draw do


  get 'editar_perfil/editarperfil'

  get 'home/index'

  resources :editar_perfil
  resources :first_table_names
  resources :forms

  resources :charges do
  	resources :competencies
  end

#  root :to => "charges#index"
   root :to => "home#index"
   resources :home
  #resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

