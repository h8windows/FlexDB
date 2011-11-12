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
  
end