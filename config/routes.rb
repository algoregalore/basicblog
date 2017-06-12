Rails.application.routes.draw do

  resources :entries

  root 'entries#index'

  resources :main do
    collection do
      get "about"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
