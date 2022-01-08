Rails.application.routes.draw do
  # get 'todolists/new'
  # get 'todolists/index'
  # get 'todolists/show'
  # get 'todolists/edit'
  resources 'todolists'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
