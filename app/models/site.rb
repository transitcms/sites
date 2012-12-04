class Site
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name,      :type => String
  field :domain,    :type => String
  field :subdomain, :type => Boolean, :default => false
  
  has_many :pages
  
end