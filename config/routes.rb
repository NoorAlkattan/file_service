Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
  		resources :documents do
        collection do
         #get 'show_by_identifier'
      	get 'download'
  	  end
    end
  end
end


  get 'db_seed', to: 'application#db_seed'
end
