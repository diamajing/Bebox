module BackendHelper

  def bc_link(name, link = nil)
    content_tag :li, itemscope: 'itemscope', itemtype: 'http://data-vocabulary.org/Breadcrumb', class: (link ? nil : 'active') do
      if link
        link_to link, itemprop: 'url' do
          content_tag :span, itemprop: 'title' do
            name
          end
        end
      else
        content_tag :span, itemprop: 'title' do
          name
        end
      end
    end
  end
	
  def menu_active(c_name, second = true)
    return 'active' if controller_name == c_name && second
  end

end
