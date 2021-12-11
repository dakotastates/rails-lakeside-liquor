Rails.application.routes.draw do



  scope '/admin' do
      devise_for :users, path: '/', skip: [:registrations, :passwords]

      devise_scope :user do
        authenticated :user do
          # get ':user/edit-profile' => 'devise/registrations#edit', :as => :edit_user_profile
          devise_for :users, path: ':user/edit-profile', only: [:registrations, :passwords]
          get '/', to: 'admin#index', as: :admin_root
          resources :products
          resources :recipes


        end

        unauthenticated do
          get '/', to: 'devise/sessions#new'

        end
      end

    end
  root 'home#index'
  get '/about', to: 'about#index'
  get '/products', to: 'home#products', as: :home_products
  get '/recipes', to: 'home#recipes', as: :home_recipes
  get '/store', to: 'store#index'
  match '/send_mail', to: 'home#send_mail', via: 'post'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
