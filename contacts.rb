require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddie Mercury" => {
      name: "Freddie",
      email: "freddie@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

contacts.map do |key, value|
  puts "#{key}: #{value}"
  value.map do |key1, value1|
    puts "  #{key1}: #{value1}"
    if key1 == :favorite_ice_cream_flavors
      value1.each {|flavour| puts "#{flavour}"}
    end
  end
end
# puts contacts["Freddie Mercury"][:favorite_ice_cream_flavors]


my_arr = []
contacts.map do |key, value|
  value.map do |key1, value2|
    puts "  #{key1}: #{value2}"
    if key1 == :email
      # puts 'nimefika'
      my_arr << value2
    end
  end
end
# pp my_arr

def remove_strawberry(contacts)
  # your code here!
  contacts.map do |key, value|
    if key == "Freddie Mercury"
      value.map do |key1, value1|
        if key1 == :favorite_ice_cream_flavors
          puts "#{value1}"
          value1.delete_if {|flavour| flavour == "strawberry" }
          puts "#{value1}"
        end
      end
    end
  end

end



# print the output to the terminal for inspection
pp remove_strawberry(contacts)














