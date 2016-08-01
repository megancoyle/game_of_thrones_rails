Rails.application.routes.draw do
  resources :characters, :houses
  root 'welcome#index'
end
