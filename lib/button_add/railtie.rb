require 'button_add/view_helpers'
module ButtonAdd
  class Railtie < Rails::Railtie
    initializer "button_add.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
