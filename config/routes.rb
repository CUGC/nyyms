Nyyms::Application.routes.draw do
  match 'register' => 'registrations#new', :via => [:get]
  match 'registrations' => 'registrations#create', :via => [:post]
  match 'independent_registration' => 'nyyms#new', :via => [:get]
  match 'nyyms' => 'nyyms#create', :via => [:post]

  root :to => 'registrations#new'
end
