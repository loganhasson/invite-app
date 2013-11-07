class User < ActiveRecord::Base
  has_many :invites, foreign_key: :guest_id
  has_many :hosted_events, foreign_key: :host_id, class_name: "Event"
  has_many :invited_events, through: :invites, source: "event"
end
