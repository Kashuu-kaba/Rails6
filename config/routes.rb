Rails.application.routes.draw do
  # get 'todolists/new'
  # get 'todolists/index'
  # get 'todolists/show'
  # get 'todolists/edit'
  root to: 'homes#top'
  resources 'todolists'
end
