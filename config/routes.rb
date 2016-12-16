Rails.application.routes.draw do
 

  get 'jobs/index'

  get 'jobs/new'

  get 'jobs/edit'

  get 'jobs/show'

  get 'jobs/create'

  get 'jobs/update'

  get 'jobs/destroy'

  get 'home/index'

  devise_for :views

  
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'

      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root to: "home#index"
end
