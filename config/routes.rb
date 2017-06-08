Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :routes
  resources :activities do
    collection do
      get :all_activities_children
    end
  end

  resources :activity_children do 
    member do
      post :set_check_in
      post :set_check_out
      post :undo_check_in
    end
  end

  root "activities#index"
end
