class Phone < ActiveRecord::Base
  belongs_to :owner, :polymorphic => true
  
  def to_label
    "#{number}"
  end
end
