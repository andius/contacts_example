class ContactAssociation < ActiveRecord::Base
  attr_accessible :contact_id, :resource_id, :resource_type

  belongs_to :contact
  belongs_to :resource, polymorphic: true
end
