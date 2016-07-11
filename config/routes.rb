Rails.application.routes.draw do
  root 'liquid_templates#index'
  resources :liquid_templates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
