Sdcbook::Application.routes.draw do
  

  resources :status_updates do
    member do
      post :upvote
      post :downvote
    end
  end


  resources :groups do
  	member do
  		post :join
  		post :leave
  	end
  end

  resources :profiles

  authenticated :user do
    root :to => "wall#index"
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end