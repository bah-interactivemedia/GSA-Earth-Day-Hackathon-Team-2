Rails.application.routes.draw do
  get 'reseed' => 'application#reseed', as: :reseed
  get 'get_climate_zone_by_zip/:zip' => 'facilities#get_climate_zone_by_zip', as: :get_climate_zone_by_zip
  resources :metrics do
    collection do
      get :categories
      get :by_category, path: 'by_category/:category'
    end

    resources :measurements
  end

  resources :facilities

  get 'reseed' => 'application#reseed', as: :reseed
end
