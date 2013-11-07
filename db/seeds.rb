# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{   :name => 'Bob' }, { :name => 'Tommy' }])
Event.create([{  :name => 'Fun timez', :host_id => 1 }, { :name => "Woo", :host_id => 2}])
Invite.create([{ :guest_id => 1 }, { :guest_id => 1 }, { :guest_id => 2} ])