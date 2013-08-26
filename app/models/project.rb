class Project < ActiveRecord::Base
  includes Activeable

  scope :active, where(active: true)
end
