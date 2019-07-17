# Your TextAnalyzer model code will go here.
class TextAnalyzer
	attr_reader :text

	def initialize(text)
		@text = text.downcase
	end

	def count_of_words
		words = text.split(" ")
		@word_count = words.count
	end

	def count_of_vowels
		@vowel_count = text.scan(/[aeoui]/).count
	end

	def count_of_consonants
		@consonant_count = text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
	end

	def most_used_letter
		s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
		arr = s1.split('') # splits everything into letters and is a long string.
		arr1 = arr.uniq # 
		arr2 = {} # arr2 is an empty hash.

		arr1.map do |c|
			arr2[c] =  arr.count(c)
		end

		biggest = { arr2.keys.first => arr2.values.first }

		arr2.each do |key, value|
			if value > biggest.values.first
			biggest = {}
			biggest[key] = value
			end
		end

		biggest
	end
end
