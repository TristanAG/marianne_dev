Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users, :skip => [:registrations]

  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  #devise_for :users

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
  end



  resources :courses, :path => 'mindfulness-courses'
  get '/admin', to: 'courses#admin_index'
  get '/mindfulness-courses', to: 'courses#index'
  get '/calendar-of-events', to: 'courses#calendar'
  get '/mindful-education-project', to: 'courses#mep_index'
  get '/mindfulness-courses/new', to: 'courses#new'
  get '/mindfulness-courses/edit', to: 'courses#edit'

  get '/services-and-specialties', to: 'static_pages#services_and_specialties'
  get '/fees-forms-and-insurance', to: 'static_pages#fees_forms_and_insurance'
  get '/questions-for-reflection', to: 'static_pages#questions_for_reflection'
  get '/location-and-contact', to: 'static_pages#location_and_contact'
  get '/faqs', to: 'static_pages#faqs'

end
