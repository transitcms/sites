module Transit
  module Sites
    autoload :Deliverable, "transit/sites/deliverable"
  end
end

require 'transit/sites/engine'

Transit.on_definition(:page) do
  include Transit::Sites::Deliverable
end

Transit::Menu.class_eval do
  belongs_to :site
end