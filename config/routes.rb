Rails.application.routes.draw do
  root 'bl_registry/registry_pages#index'

  namespace :bl_registry, path: '' do

    resource :react, controller: 'registry_react', only: [] do
      collection do
        get :client
        get :server
      end
    end

  end

  namespace :bl_admin do
    get '' => 'admin_pages#index'

    resource :react, controller: 'admin_react', only: [] do
      collection do
        get :client
      end
    end

  end
end
