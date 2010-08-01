class UsResidency < ActiveRecord::Base
  belongs_to :person
  has_many :phones, :as => 'owner'
end
