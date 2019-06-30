Rails.application.routes.draw do
  root to: "blogs#index"
  resources :blogs, only:[:show] do
    get :not_have_entry, on: :collection
    get :have_unapproved_comment, on: :collection
  end
end
