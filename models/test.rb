def most_used_letter(text)
    s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    arr = s1.split('') # splits everything into letters and is a long string.
    arr1 = arr.uniq # creates an array of unique letters.
    arr2 = {} # arr2 is an empty hash.

    arr1.map do |c| #for each unique letter, 
        arr2[c] =  arr.count(c) # make each uniq letter a key and the value is the count for each time it shows in the original array.
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

most_used_letter("Who wrote this code anyway")