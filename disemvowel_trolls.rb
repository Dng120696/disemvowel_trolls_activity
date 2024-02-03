# DISEMVOWEL TROLLS

# Trolls are attacking your comment section!
# A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
# Your task is to write a method that takes a string and return a new string with all vowels removed.

#using reject and join method
def remove_vowels(str_el)
  vowels =['a','e','i','o','u','A','E','I','O','U']

  new_str = str_el.split('').reject { |str| vowels.include?(str)}.join

  new_str
end
p remove_vowels('This website is for loser LOL!')

#using each, include and join method
def remove_vowels(str_el)
  vowels =['a','e','i','o','u','A','E','I','O','U']
  new_str = []
  arr_str = str_el.split('')

  arr_str.each do |str|
   new_str << str unless vowels.include?(str)
  end
  new_str.join
end
p remove_vowels('This website is for loser LOL!')

# using each and join method
def remove_vowels(str_el)
  vowels =['a','e','i','o','u','A','E','I','O','U']
  new_str = []
  arr_str = str_el.split('')

  arr_str.each do |str|
    is_vowel = false

    vowels.each do |vowel|
      is_vowel = true if str == vowel
    end

    new_str << str unless is_vowel
  end
  new_str.join
end


p remove_vowels('This website is for loser LOL!')
