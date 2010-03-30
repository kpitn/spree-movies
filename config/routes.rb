# Put your extension routes here.

map.namespace :admin do |admin|
  admin.resources :product do |product|
    product.resources :movies
  end
  admin.resources :movie_sites
end  
