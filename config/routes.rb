Nyyms::Application.routes.draw do
  match 'register' => 'registrations#new', :via => [:get]
  match 'registrations' => 'registrations#create', :via => [:post]
  match 'independent_registration' => 'nyyms#new', :via => [:get]
  match 'nyyms' => 'nyyms#create', :via => [:post]
  match 'mp3s' => 'nyyms#mp3s', :via => [:get]

  match 'registrations' => 'registrations#index', :via => [:get]

  root :to => 'registrations#new'
end
