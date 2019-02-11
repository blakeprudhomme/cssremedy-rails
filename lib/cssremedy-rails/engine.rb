module Cssremedy
  module Rails
    class Engine < ::Rails::Engine
      initializer "configure assets of cssremedy-rails", :group => :all do |app|
        app.config.assets.precompile += %w( cssremedy-rails/*.css )
      end
    end
  end
end
