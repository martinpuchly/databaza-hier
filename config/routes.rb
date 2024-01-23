Rails.application.routes.draw do
  resources :groups
  get 'home/index'
  devise_for :users, path: '', path_names:
                                      {
                                        sign_in: 'prihlasit',
                                        sign_out: 'odhlasit',
                                        password: 'heslo',
                                        confirmation: 'verification',
                                        unlock: 'unblock',
                                        registration: 'registracia',
                                        sign_up: ''
                                      }




scope '/admin' do
    resources :permissions

  end



end
