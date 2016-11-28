Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users
  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
  end

  resources :courses, :path => 'mindfulnesscourses'
  get '/admin', to: 'courses#admin_index'
  get '/mindfulnesscourses', to: 'courses#index'
  get '/calendarofevents', to: 'courses#calendar'
  get '/mindful-education-project', to: 'courses#mep_index'
  get '/mindfulnesscourses/new', to: 'courses#new'
  get '/mindfulnesscourses/edit', to: 'courses#edit'

  get '/services-and-specialties', to: 'static_pages#services_and_specialties'
  get '/fees-forms-and-insurance', to: 'static_pages#fees_forms_and_insurance'
  get '/questions-for-reflection', to: 'static_pages#questions_for_reflection'
  get '/location-and-contact', to: 'static_pages#location_and_contact'
  get '/faqs', to: 'static_pages#faqs'

end
