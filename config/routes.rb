BogApp::Application.routes.draw do
    root to: 'creatures#index'

    # just to be RESTful
    get '/creatures', to: 'creatures#index'

    # it's a `get` because 
    #   someone is requesting
    #   a page with a form
    get '/creatures/new', to: 'creatures#new'

    post "/creatures", to: "creatures#create"

    # handle the submitted form
    post '/creatures', to: 'creatures#create'


end