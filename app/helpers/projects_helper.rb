module ProjectsHelper
  def project_list_item(project)
    content_tag(:li, :class => 'project') do
      link_to project_path(project), project.name
    end
  end
end
