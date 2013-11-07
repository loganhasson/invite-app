class Event < ActiveRecord::Base
  has_many :invites, dependent: :destroy
  has_many :guests, through: :invites, class_name: "User"
  belongs_to :host, class_name: "User"
end
