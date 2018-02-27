Rails.application.routes.draw do
  get 'api/blank' => 'api#blank'
  get 'api/json_attribute' => 'api#json_attribute'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
