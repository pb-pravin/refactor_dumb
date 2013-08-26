class PagesController < ApplicationController
  def welcome
    @projects = Projects.where(active: true)
  end
end
