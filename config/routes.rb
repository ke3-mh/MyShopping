Rails.application.routes.draw do

  namespace :public do
    get 'users/show'
    get 'users/edit'
  end
  # ユーザ用
  # URL /customers/sign_in ...
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  # ゲストログイン
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  scope module: :public do
    # トップページ
    root to: 'reviews#index'

    # users
    get 'users/mypage' => 'users#show'
    get 'users' => 'users#index'
    get 'users/infomation/edit' => 'users#edit'
    patch 'users/infomation' => 'users#update'
    get 'users/goods' => 'users#goodlist'

    # revies
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
