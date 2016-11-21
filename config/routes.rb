Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
  end


  resources :courses, :path => 'mindfulnesscourses'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  get '/services-and-specialties', to: 'static_pages#services_and_specialties'
  get '/fees-forms-and-insurance', to: 'static_pages#fees_forms_and_insurance'


  get '/mindfulnesscourses', to: 'courses#index'
  get '/calendarofevents', to: 'courses#calendar'
  get '/mindful-education-project', to: 'courses#mep_index'
  #need to first implement friendly_id
  get '/mindfulnesscourses/new', to: 'courses#new'
  get '/mindfulnesscourses/edit', to: 'courses#edit'

  get '/mindful-relating', to: 'static_pages#mindful_relating'
  get '/questions-for-reflection', to: 'static_pages#questions_for_reflection'
  get '/location-and-contact', to: 'static_pages#location_and_contact'

end
