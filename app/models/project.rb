class Project < ActiveRecord::Base
  scope :active, where(active: true)

  before_save :deactivate_if_over_num_views

  def deactivate_if_over_num_views
    if num_views > 50
      self.active = false
    end
  end
end
