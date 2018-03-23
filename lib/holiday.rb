require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]


end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |date,supplies|
    supplies << "Balloons"
  end


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |date, supplies|
    supplies << supply
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash[season] ={holiday_name => supply_array}
  # holiday_hash.each do |key, dates|
  #   if key == season
  #     dates = {:holiday_name => []}
  #   end
  # end

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  temp =[]
  holiday_hash[:winter].each do |dates,supplies|
    temp << supplies
  end
  temp.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  temp = ""
  temp1 = ""
  holiday_hash.each do |seasons,holidays|
    puts "#{seasons.capitalize}:"
    holidays.each do |dates, supply|
      temp = dates.to_s
      temp_a = temp.split('_')
      temp_a.each do |word|
        word = word.capitalize
      end
      temp = temp_a.join(" ")

      if supply.size >1
        temp1 = supply.join(", ")
      else
        temp1 = supply.join
      end

      puts "  #{temp.capitalize}: #{temp1}"
    end

  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
