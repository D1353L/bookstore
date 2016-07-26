module NavbarHelper
  def nav_bar
    content_tag(:ul, class: "nav navbar-nav") do
      yield
    end
  end

  def nav_link(*args)
    options = current_page?(args[1]) ? { class: "active" } : {}
    content_tag(:li, options) do
      link_to *args
    end
  end
end