class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def corona
  end

   def greet
    if Time.now.between? Time.now.beginning_of_day, Time.now.middle_of_day
      return "Good Morning"
    elsif Time.now.between? Time.now.middle_of_day, Time.now.change(hour: 17)
      return "Good Afternoon"
    elsif Time.now.between? Time.now.change(hour: 17), Time.now.change(hour: 20)
      return "Good Evening"
    elsif Time.now.between? Time.now.change(hour: 20), Time.now.end_of_day
      return "Good Night"
    end
  end


end
