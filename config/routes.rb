Rails.application.routes.draw do
  devise_for :teachers
  devise_for :students
  # resources :students
  devise_for :admin
  # devise_for :students

  namespace :teachers do
    resources :subjects, only: [:index, :show]
    resources :standards, only: [:index, :show]
    resources :parents, only: [:index, :show]
    resources :teachers
    resources :students, only: [:index, :show]
    # root to: 'admin#index'
    # resources :admin, only: [:index]
    # get 'index', to: 'admin#index', as: :index
  end
  get '/teachers/index', to: 'teachers#index'


  namespace :students do
    resources :subjects, only: [:index, :show]
    resources :standards, only: [:index, :show]
    resources :parents, only: [:index, :show]
    resources :teachers, only: [:index, :show]
    resources :students
    # root to: 'admin#index'
    # resources :admin, only: [:index]
    # get 'index', to: 'admin#index', as: :index
  end
  get '/students/index', to: 'students#index'


  get '/admin/notice', to: 'admin#notice'
  namespace :admin do
    resources :subjects
    resources :standards
    resources :parents
    resources :teachers
    resources :students
    # root to: 'admin#index'
    # resources :admin, only: [:index]
    # get 'index', to: 'admin#index', as: :index
  end
  get '/admin/index', to: 'admin#index'


  resources :courses
  get 'contact', to: 'home#contact', as: :contact
  get 'about_us', to: 'home#about', as: :about_us
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
