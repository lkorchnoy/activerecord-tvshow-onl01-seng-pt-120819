class Show < ActiveRecord::Base 
  
  def self.highest_rating
    Show.maximum(:rating)
    #Show.where("rating > ?", 10)
    
 end

 def most_popular_show
   Show.order(rating: :desc).first
 end
  
  def lowest_rating
    Show.minimum("rating")
  end
 
  def least_popular_show
    Show.order(rating: :asc).first
  end
 
  def ratings_sum
    Show.sum(:rating)
  end
 
   def popular_shows
     Show.where("rating > ?", 5)
   end
 
   def shows_by_alphabetical_order
     Show.order(name: :asc)
   end

end 