class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

# PART 1
  
  # Class method
  def self.random_word
    DICTIONARY.sample
  end

  # Define initialize method
  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  # Getter method
  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  # Instance method
  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(guess_char)
    arr_indices = []

    @secret_word.each_char.with_index { |char, idx| arr_indices << idx if char == guess_char }
   
    arr_indices
  end

  def fill_indices(char, arr_indices)
    arr_indices.each { |idx| @guess_word[idx] = char}
  end

  #_____________________________________________________________________________
  # PART 2

    # More instance method
    def try_guess(char)
      if self.already_attempted?(char)
        p 'that has already been attempted'
        return false
      end 
      
      @attempted_chars << char
      @remaining_incorrect_guesses -= 1 if !@secret_word.include?(char)
      indices = self.get_matching_indices(char)
      self.fill_indices(char, indices)
      true
    end 

    def ask_user_for_guess
      p "Enter a char: "
      guess_char = gets.chomp
      self.try_guess(guess_char)
    end

    def win?
      if @guess_word.join("") == @secret_word
        p "WIN"
        return true
      end
      false
    end

    def lose?
      if @remaining_incorrect_guesses == 0 
        p "LOSE"
        return true
      end
      false
    end

    def game_over?
      if self.win? || self.lose?
        p @secret_word
        return true
      end
      false
    end 

end
# FINISHED