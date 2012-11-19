class Contact < ActiveRecord::Base
  attr_accessible :name

  has_many :contact_associations
  has_many :centers, through: :contact_associations, source: 'resource', source_type: 'Center'
  has_many :offices, through: :contact_associations, source: 'resource', source_type: 'Office'
end
