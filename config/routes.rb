Rails.application.routes.draw do
  # get 'bookers/index'
  # get 'bookers/show'
  # get 'bookers/new'
  # get 'bookers/edit'
  root  to: 'books#top'
  get 'books'=>'books#new', as:'booking'
  resources :books
  post 'books'=>'books#create'
  get 'books'=>'books#index'
  get 'books/:id'=>'books#show', as:'booklist'
  get 'books/:id/edit'=>"books#edit",as:'edit'
  patch 'books/:id'=>'books#update', as:'update_booklist'
  delete 'books/:id'=>'books#destroy',as:'destroy_a'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
