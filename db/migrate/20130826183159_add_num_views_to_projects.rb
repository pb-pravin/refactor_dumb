class AddNumViewsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :num_views, :integer
  end
end
