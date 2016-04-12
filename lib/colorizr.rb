class String
# Create a ruby constant for the colors and their codes
 COLORS = {
   black: 30,
   red: 31,
   green: 32,
   yellow: 33,
   blue: 34,
   light_gray: 37,
   light_blue: 94,
   light_magenta: 95,
   white: 97
 }

# Create color methods for each color
  def self.create_colors
    COLORS.each do |color, code|
      send(:define_method, "#{color}") {"\e[#{code}m#{self}\e[0m"}
    end
  end

  def self.colors
    COLORS.keys
  end

  # Give a sample of all of the available colors
  def self.sample_colors
    COLORS.each_key {|color| puts "This is " + "#{color}".send(color)}
  end
end

# Create the color methods for the String class
String.create_colors
