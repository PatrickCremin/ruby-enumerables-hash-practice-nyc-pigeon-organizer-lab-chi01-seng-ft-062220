def nyc_pigeon_organizer(data)
  # write your code here!
  new_list = {}
  data.each do |key, value|
    value.each do |traits, pigeon_name|
      pigeon_name.each do |name|
        if new_list[name] == nil
          new_list[name] = {}
        end
        if new_list[name][key] == nil
          new_list[name][key] = []
        end
        new_list[name][key].push(traits.to_s)
      end
    end 
  end
  new_list
end