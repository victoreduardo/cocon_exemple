Rails.application.routes.draw do

  root 'tb_tasks#index'
  resources :tb_tasks, path: :tasks, except: %i(destroy) do
    get :atualizar, on: :collection
  end
end
