Rails.application.routes.draw do
  get 'start', to: 'pages#start'

  get 'finish', to: 'pages#finish'

  root 'pages#start'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
