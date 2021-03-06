Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "companies#splash"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/companies', to: "companies#index", as: "companies"
  get '/companies/new', to: "companies#new", as: "new_company"
  post '/companies', to: "companies#create"
  get '/companies/:company_id', to: "companies#splash", as: "show_company"
  get '/companies/:company_id/edit', to: "companies#edit", as: "edit_company"
  patch '/companies/:company_id', to: "companies#update", as: "update_company"
  delete '/companies/:company_id', to: "companies#destroy", as: "delete_company"

  get '/companies/:company_id/services', to: 'company_services#index', as: "company_services"
  get '/companies/:company_id/services/new', to: "company_services#new", as: "new_service"
  post '/companies/:company_id/services', to: "company_services#create", as: "new_company_service"

  get '/inquiries/new', to: 'inquiries#new'
  post '/inquiries', to: 'inquiries#create'
end
