Rails.application.routes.draw do
  # get 'todolists/new'
  # get 'todolists/index'
  # get 'todolists/show'
  # get 'todolists/edit'
  root to: 'homes#top'
  delete 'todolists/destroy_all'
  resources 'todolists'
end
