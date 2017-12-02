Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "authenticate", to: "authentication#authenticate"
  post "request_github_token", to: "users#request_github_token"
  post "remove_github_token", to: "users#remove_github_token"

  get "sprints/:id/burndown", to: "sprints#get_burndown", as: "burndown"

  get "repos", to: "projects#github_projects_list", as: "repos"

  get "projects/:id/contributors", to: "projects#get_contributors", as: "project_contributors"

  post "projects/:id/issues/assignees", to: "issues#update_assignees", as: "issue_assignees"

  get "projects/:id/gpa", to: "projects#get_gpa", as: "project_gpa"

  get    "projects/:id/issues", to: "issues#index", as: "project_issues"
  post   "projects/:id/issues", to: "issues#create"
  patch  "projects/:id/issues", to: "issues#update"
  put    "projects/:id/issues", to: "issues#update"
  get "sprints/:id/doing_stories", to: "stories#doing_list"
  get "sprints/:id/done_stories", to: "stories#done_list"
  get "sprints/:id/to_do_stories", to: "stories#to_do_list"

  get "projects/:id/issues", to: "issues#index"
  post "projects/:id/issues", to: "issues#create"
  put "projects/:id/issues", to: "issues#update"
  patch "projects/:id/issues", to: "issues#update"
  delete "projects/:id/issues", to: "issues#close"

  post "projects/:id/reopen_issue", to: "issues#reopen_issue"
  get "sprints/:id/velocity", to: "sprints#get_velocity"

  resources :users, shallow: true do
    resources :projects do
      resources :features
      resources :releases do
        resources :sprints do
          resources :stories
          resources :revisions
          resources :retrospectives
        end
      end
    end
  end
end
