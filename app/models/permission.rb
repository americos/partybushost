class Permission < ActiveRecord::Base
  belongs_to :user
  belongs_to :thing, :polymorphic => true #Rails will use the thing_id and thing_type of the permission modekl to figure out what kind of permission to use.
end
