class PagesController < ApplicationController
  before_filter :projects_list

  def welcome
  end

  def projects_list
    @projects = Projects.where(active: true)
  end
end
