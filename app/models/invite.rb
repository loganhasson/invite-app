class Invite < ActiveRecord::Base
  belongs_to :event
  belongs_to :guest, class_name: "User"

  def accepted?
    if self.accepted == true
      "Going"
    elsif self.accepted == false
      "Not Going"
    else
      "Pending..."
    end
  end

  def accept!
    self.update(accepted: true)
  end

  def decline!
    self.update(accepted: false)
  end

end
