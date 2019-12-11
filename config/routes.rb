Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'


  resource :dashboard, only: [:show]

  get '/jeremie', to: 'pages#jeremie', as: 'jeremie'
  get '/maxime', to: 'pages#maxime', as: 'maxime'
  get '/nicolas', to: 'pages#nicolas', as: 'nicolas'

  post '/instruments', to: 'instruments#index', as: 'intruments'

  resources :musical_works, only: [:index, :show] do
    # :new, :create, , :detroy , :edit, :update
    resources :work_instruments, only: [:create] do
      collection do
        post :load_orchestra_composition
      end
    end
    # pas d'index. La liste se fait sur la show d'un musical work
    # pas de show. L'affichage se fait uniquement en liste
    # pas de new. On fait un :create directement depuis un musical_works
    # pas d'edit, la modif se fait en ajax via la liste visible dans le musical work.
  end
  resources :work_instruments, only: [:update, :destroy]

  resources :invitations, only: [:index, :create, :show] do
  # pas de new, on a un formulaire de creation affiché dans l'index
  # pas d'edit, on va juste modifier certains champs via des routes 'member'
  # pas d'update, idem
  # pas de destroy, on ne peut pas supprimer une invitation.
    member do
      patch :accept
      patch :decline
    end
  end

  # TO add : url of the SendinBlue API to change the invitation deliver/read/error

  resources :concerts, only: [:index, :show, :update] do
  # pas de edit, la modif se fait en ajax dans la show.
  # plus tard :new, :create, :destroy
    resources :program_steps, only: [:update, :destroy] do
    # pas index :
    # pas show
    # pas new
    # pas edit
      collection do
        post :add_work
        post :add_intermission
      end
    end

  end

  resources :orchestra_compositions, only: [:create]
  # pas de new : la création se fait dans l'interface d'un musical_work
  # pas de edit : la modif du se fait dans l'index
  # pas de show : toutes les infos sont dans l'index
  # plus tard : :index, :destroy



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
