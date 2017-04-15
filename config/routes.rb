Rails.application.routes.draw do
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end

  get 'about' => 'topics#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "topics#index"
end
