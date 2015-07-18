class Timer < ActiveRecord::Base
  belongs_to :survey

  before_validation :set_loops_completed
  
  def set_loops_completed
    if new_record?
      self.loops_completed = 0
    else
      self.loops_completed +=1
    end

    if loops_completed < 4
        set_status
    else
      self.status = "Done"
    end
  end

  def set_status
    if status.blank?
      self.status = "Working"
    elsif status == "Working"
      self.status = "Rest"
    elsif status == "Rest"
      self.status = "Working"
    end
  end
end
