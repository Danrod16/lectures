require "pry-byebug"

def full_name(first_name, last_name)
  binding.pry
  first_name = first_name.capitalize
  last_name = last_name.capitalize
  p "#{first_name} #{last_name}"
end

full_name("daniel", "rodriguez")
