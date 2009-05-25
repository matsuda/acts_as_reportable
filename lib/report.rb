class Report < ActiveRecord::Base
  belongs_to :reportable, :polymorphic => true
end
