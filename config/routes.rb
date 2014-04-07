Spree::Core::Engine.routes.draw do
  get '/cart', :to => 'orders#edit', :as => :cart
  patch '/cart', :to => 'orders#update', :as => :update_cart
  put '/cart/empty', :to => 'orders#empty', :as => :empty_cart
end
