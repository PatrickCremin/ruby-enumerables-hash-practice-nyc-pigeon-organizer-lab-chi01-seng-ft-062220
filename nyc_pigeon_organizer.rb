def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  
  
data.each do |key, value| 
   
value.each  do |inner_key, array| 
      
array.each do |name|
 if !pigeon_list[name]
pigeon_list[name] = {}
end

if !pigeon_list[name][key]
          pigeon_list[name][key] = []
        end
pigeon_list[name][key] << inner_key.to_s
end
  end
  
  pigeon_list
end