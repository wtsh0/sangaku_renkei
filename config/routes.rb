Rails.application.routes.draw do
  resources :t_users
  root to: "t_users#index"  
end
