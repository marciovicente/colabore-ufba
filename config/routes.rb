Rails.application.routes.draw do
  resources :type_reports

  resources :reports

  root to: "reports#index"

  match "/sobre" => "global#about", via: :get
  match "/ultimas-denuncias" => "reports#list", via: :get
  match "/busca/:query" => "reports#list", via: :get

end
