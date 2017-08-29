require "gridforms/rails/version"

module Gridforms
  module Rails
    class Engine < Rails::Engine
      initializer "gridforms-rails" do |app|
        app.config.assets.precompile += %w(gridforms.js gridforms.css gridforms.css.map gridforms.sass)
      end
    end
  end
end
