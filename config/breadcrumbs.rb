crumb :root do
  link "TOP", root_path
end

crumb :bs_projects do
  link BsProject.model_name.human, bs_projects_path
end

crumb :new_bs_projects do
  link t('action.new', name: BsProject.model_name.human), new_bs_project_path
  parent :bs_projects
end

crumb :new_bs_projects do
  link t('action.new', name: BsProject.model_name.human), new_bs_project_path
  parent :bs_projects
end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).