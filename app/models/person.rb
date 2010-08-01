class Person < ActiveRecord::Base
  has_many :phones, :as => 'owner'
  has_one :us_residency
  has_many :achievements

    def to_label
    "#{first_name} #{last_name}"
  end
end

