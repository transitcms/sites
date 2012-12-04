module Transit
  module Sites
    ##
    # Extends the core page deliverable to allow assignment to a particular site.
    # 
    module Deliverable
      
      extend ActiveSupport::Concern
      
      included do
        belongs_to :site
      end
      
    end # Deliverable
  end # Sites
end # Transit