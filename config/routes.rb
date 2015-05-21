Rails.application.routes.draw do

  get '/' => 'site#home', as: 'root'
  resources :users

end
