Rails.application.routes.draw do
  resources :questions
  resources :posts
  resources :advertisements
  get 'about' => 'welcome#about'
  get 'faq' => 'welcome#faq'
  root 'welcome#index'
end
