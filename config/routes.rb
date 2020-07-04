Rails.application.routes.draw do
  
  get '/employee/details' => 'employee#details'
  get '/employee/list' => 'employee#list'
end
