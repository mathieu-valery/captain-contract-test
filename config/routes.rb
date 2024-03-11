# frozen_string_literal: true
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index'

  post 'characters/fight_results', to: 'characters#fight', as: :character_fight
  get 'characters_info/:id', to: 'characters#info', as: :character_info
  get 'weapons_info/:id', to: 'weapons#info', as: :weapon_info
end
