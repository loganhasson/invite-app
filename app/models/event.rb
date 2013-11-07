class Event < ActiveRecord::Base
  has_many :invites, dependent: :destroy
end
