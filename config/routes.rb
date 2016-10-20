Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  get '/services-and-specialties', to: 'static_pages#services_and_specialties'
  get '/fees-forms-and-insurance', to: 'static_pages#fees_forms_and_insurance'
  get '/mindful-education-project', to: 'static_pages#mindful_education_project'
  get '/mindful-relating', to: 'static_pages#mindful_relating'
  get '/questions-for-reflection', to: 'static_pages#questions_for_reflection'
  get '/location-and-contact', to: 'static_pages#location_and_contact'

end
