Spree::Core::Engine.routes.draw do
  namespace :backend do
    match 'reorder_products' => 'products#reorder', via: [:get]
    resources :products do
      collection do
        post :update_positions
      end
    end
  end
end
