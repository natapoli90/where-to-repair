Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "admins#splash"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/companies', to: "companies#index", as: "companies"
  get '/companies/new', to: "companies#new", as: "new_company"
  post '/companies', to: "companies#create"
  get '/companies/:company_id', to: "companies#show", as: "show_company"



  get '/companies/:company_id/services', to: 'services#index', as: "services"
end
