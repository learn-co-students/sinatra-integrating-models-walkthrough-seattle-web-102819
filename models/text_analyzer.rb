# Your TextAnalyzer model code will go here.
class TextAnalyzer
    attr_reader :text
   
    def initialize(text)
      @text = text.downcase
    end
   
    def count_of_words
      words = text.split(" ")
      words.count
    end
   
    def count_of_vowels
      text.scan(/[aeoui]/).count
    end
   
    def count_of_consonants
      text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end
   
    def most_common_letter
        chars             = {}
        most_common       = nil
        most_common_count = 0
        text.downcase.gsub(/[^a-z]/, '').each_char do |c|
          count = (chars[c] = (chars[c] || 0) + 1)
          if count > most_common_count
            most_common       = c
            most_common_count = count
          end
        end
        [most_common, most_common_count]
      end

  end