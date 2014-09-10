bug_array = [
        {
        name: "Soapberry bug",
        order: "Hemiptera",
        wings: true,
        eats: "Plants"
        },
        {
        name: "Mosquito",
        order: "Diptera",
        wings: true,
        eats: "Blood"
        },
        {
        name: "Ladybug",
        wings: true,
        eats: "Other bugs"
        }
]

class Bug
        def initialize(bug_hash)
                @name = bug_hash[:name]
                @order = bug_hash[:order]
                @wings = bug_hash[:wings]
                @eats = bug_hash[:eats]
        end
        
        attr_accessor :name, :order, :wings, :eats
end

# goes through each element of array (in this case, elements = hashes)
# instantiates a class for each hash and then prints it
# friend is just a placeholder for each one, you recycle with each loop
bug_array.each do |each_bug_hash|
        friend = Bug.new(each_bug_hash)
        puts "*" * 21
        puts "Name: #{friend.name}"
        puts "Order: #{friend.order}"
        puts "Wings: #{friend.wings}"
        puts "Diet: #{friend.eats}"
end

