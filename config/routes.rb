Rails.application.routes.draw do
  get 'get_climate_zone_by_zip/:zip' => 'facilities#get_climate_zone_by_zip', as: :get_climate_zone_by_zip
  resources :metrics do
    collection do
      get :categories
      get :by_category, path: 'by_category/:category'
    end

    resources :measurements
  end

  resources :facilities

  resources :regions

  get 'reseed' => 'application#reseed', as: :reseed
  
  get "get_energy_use_by_state" => "facilities#get_energy_use_by_state", as: :get_energy_use_by_state
end
