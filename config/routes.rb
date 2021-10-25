Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "parts" => "parts#index"
  post "parts" => "parts#create"
  get "parts/:id" => "parts#show"
  patch "parts/:id" => "parts#update"
  delete "parts/:id" => "parts#destroy"
end
