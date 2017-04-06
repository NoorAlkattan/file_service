class ApplicationController < ActionController::API
  def db_seed
    Rails.application.load_seed  
  end
end
