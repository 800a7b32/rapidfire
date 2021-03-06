Rapidfire::Engine.routes.draw do
  scope module: :rapidfire do
    resources :surveys do
      get 'results', on: :member

     resources :questions
     resources :attempts, only: [:new, :create, :edit, :update, :show]
    end

  root :to => "rapidfire/surveys#index"
end
