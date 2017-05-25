Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

      resources :url
	    match '/url/parse_url' => 'url#parse_url', via: :post

end
