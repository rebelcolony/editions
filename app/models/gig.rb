class Gig < ActiveRecord::Base
  validates :title, :presence => true
  validates :venue, :presence => true
  validates :city, :presence => true
  validates :country, :presence => true
  validates :description, :presence => true
  validates :map, :presence => true
  
#  validate :date_in_correct_range

#def date_in_correct_range
 #  unless (date > Time.now.to_date && date < 1.year.from_now)
 #     errors.add(:to_base, "The gig start-time must be between now and 1 year in the future")
#     end
 #  end
   
end
