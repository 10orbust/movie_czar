Rails.application.routes.draw do
  
root to: 'groups#index'

  resources :groups
  resources :group_rsvps
  resources :group_czars
  resources :group_invites
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
