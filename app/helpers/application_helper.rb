module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "FlexDB") .join(" - ") unless parts.empty?
      end
    end
  end
  
  def logo
    image_tag("/assets/flex-logo2.png", :height => "100", :width => "100", :alt => "FlexDB App", :class => "round")
  end
  
  def admins_only(&block)
    block.call if current_user.try(:admin?)
    nil
  end
  
  def authorized?(permission, thing, &block)
    block.call if can?(permission.to_sym, thing) || current_user.try(:admin?)
    nil
  end
  
end