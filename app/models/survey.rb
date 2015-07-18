class Survey < ActiveRecord::Base
  has_one :timer

  after_create :create_timer

  def create_timer
    Timer.create(survey: self)
  end
end
