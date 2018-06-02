Rails.application.routes.draw do
  resources :t_reg_codes, only:[:new, :create]
  resources :t_users
  root to: "t_users#index"
end
