Rails.application.routes.draw do

  # ユーザ用
  # URL /customers/sign_in ...
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  scope module: :public do
      root to: 'reviews#index'
      resources :reviews, only: [:new,
                                 :create,
                                 :index,
                                 :show,
                                 :edit,
                                 :update,
                                 :destroy]
  end

# ------------------------------------------------------------------------------
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do

  end
end
