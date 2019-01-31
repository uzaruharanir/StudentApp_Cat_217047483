Rails.application.routes.draw do
  resources :studentsforms
  get 'students/new'
  get 'students/edit'
  get 'students/show'
  get 'students/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
