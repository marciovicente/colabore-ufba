Rails.application.routes.draw do
  resources :type_reports

  resources :reports

  root to: "reports#index"

  match "/sobre" => "global#about", via: :get
end
