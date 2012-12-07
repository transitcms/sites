module Transit
  class Site
    include Mongoid::Document
    include Mongoid::Timestamps
  
    field :name,        :type => String
    field :domain,      :type => String
    field :subdomain,   :type => Boolean, :default => false
    field :identifier,  :type => String
  
    validates :name, :domain, :presence => true
    before_create :generate_identifier
    has_many :pages
    has_many :menus, class_name: 'Transit::Menu'
  
    private
  
    ##
    # Create a shortened identifier to easily 
    # identify this site.
    # 
    def generate_identifier
      self.identifier ||= self.name.parameterize.underscore
    end
  
  end
end