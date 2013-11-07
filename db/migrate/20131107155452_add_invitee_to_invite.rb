class AddInviteeToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :invitee, :string
  end
end
