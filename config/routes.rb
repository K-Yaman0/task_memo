Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'tasks#index'
  resources :tasks do
    resources :memos, only: [:create, :edit, :update, :destroy]
  end
  get '/tasks/:id/completed', to: 'completes#complete', as: 'complete'
  get '/tasks/:id/revert_complete', to: 'completes#revert_complete', as: 'revert_complete'

end
