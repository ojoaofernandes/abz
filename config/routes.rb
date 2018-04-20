Rails.application.routes.draw do
  resources :loans
  resources :books
  resources :disciplines
  get 'home/index'
  post 'books/import_books'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  get 'bookings/index'
  post 'bookings/create'
  delete 'bookings/destroy/:id', to: 'bookings#destroy', as: 'booking_destroy'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
