# frozen_string_literal: true

Rails.application.routes.draw do
  # Devise
  devise_for :users, :omniauthable, omniauth_providers: [:github, :gitlab, ]

  # Web app
  root to: "application#app"
  match "*path", to: "application#app", via: :get
end
