class Office < ActiveRecord::Base
  attr_accessible :center, :name

  has_many :contact_associations, as: :resource
  has_many :contacts, through: :contact_associations, uniq: true

  belongs_to :center
end
