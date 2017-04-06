Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
  		resources :documents
  	end
  end
  
  get 'db_seed', to: 'application#db_seed'
end
