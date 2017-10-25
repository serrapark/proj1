Rails.application.routes.draw do
  devise_for :trainers
  resources :trainers
  root to: "home#index"
  patch "capture", to: "pokemons#capture", as: "capture"
  patch "damage", to: "pokemons#damage", as: "damage"
  get "trainers/:id", to: "trainers#show", as: "train"
  get "pokemons", to: "pokemons#new", as: "pokemon_new"
  post "pokemons", to: "pokemons#create", as: "pokemon_create"
end
