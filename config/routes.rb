Rails.application.routes.draw do

  namespace :admin do
  	root 'main#index'
    get 'main/index'
    resources :teachers, except: :show
    resources :disciplines, except: :show
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
