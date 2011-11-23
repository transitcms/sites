require 'rails'

module Transit
  module Sites
    class Engine < ::Rails::Engine
      paths['app/models'] << File.expand_path("../../../../app/models", __FILE__)
    end
  end
end