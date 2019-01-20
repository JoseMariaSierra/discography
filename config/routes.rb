Rails.application.routes.draw do

  devise_for :users
	resources :artists do
    resources :lps
  end

  root 'welcome#index'
  get 'welcome/index'
  get 'lps/all'
  
end
