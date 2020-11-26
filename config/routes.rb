Rails.application.routes.draw do
  root "boards#index"
  resources :boards

  resource :user, controller: "registrations", only: [:create, :edit, :update] do
    get "sign_up", action: "new"
  end
end
