module Activeable
  def self.included(k)
    k.scope :active, k.where(active: true)
  end

  def deactivate_if_over_num_views
    if num_views > 50
      self.active = false
    end
  end
end
