Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activities, :assignments, :clients, :employees, :projects, :timesheets, :timesheet_details, :timesheet_histories, :weeks
end
