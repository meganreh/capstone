Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/habits" => "habits#index"
    get "/habits/:id" => "habits#show"
    post "/habits" => "habits#create"
    patch "/habits/:id" => "habits#update"
    delete "/habits/:id" => "habits#destroy"

    get "/tasks" => "tasks#index"
    get "/tasks/:id" => "tasks#show"
    post "/tasks" => "tasks#create"
    patch "/tasks/:id" => "tasks#update"
    delete "/tasks/:id" => "tasks#destroy"

    get "/habit_completions" => "habit_completions#index"
  end
end
