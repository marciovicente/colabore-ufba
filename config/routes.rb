Rails.application.routes.draw do
  resources :type_reports

  resources :reports

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  root to: "reports#index"

  match "/sobre" => "global#about", via: :get
  match "/ultimas-denuncias" => "reports#list", via: :get
  match "/busca/:query" => "reports#list", via: :get

  match "/admin" => "global#admin", via: :get
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

end
