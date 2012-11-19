class Center < ActiveRecord::Base
  attr_accessible :name

  has_many :contact_associations, as: :resource
  has_many :contacts, through: :contact_associations, uniq: true

  has_many :offices
end
