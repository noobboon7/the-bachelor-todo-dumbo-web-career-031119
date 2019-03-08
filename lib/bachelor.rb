require "pry"
def get_first_name_of_season_winner(data, season)
  data.each do |k, v|
    if k.include?(season)
      v.each do |str, att|
        if str["status"].include?("Winner")
          return str["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, person|
    person.each do |k, v|
      if k["occupation"].include?(occupation)
        return k["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  amount = 0
  data.each do |season, person|
    person.each do |k, v|
      if k["hometown"].include?(hometown)
        amount += 1
      end
    end
  end
  amount
end

def get_occupation(data, hometown)
  data.each do |season, person|
    person.each do |k, v|
      if k["hometown"].include?(hometown)
        return k["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  arr = []

  data.each do |sea, person|
    if sea.include?(season)
      person.each do |k, v|
        arr << k["age"].to_i
      end
    end
  end
  sum = arr.sum.to_f / arr.size
  sum.round 
end
