class ApplicationController < ActionController::Base
  def index
    render({ :template => "index.html.erb" })
  end

  def generate
    @the_text = params.fetch("query_evaluation").split
    @new_text = ""
    @punctuation_list = [",", ".", "(", ")", "!", "?", "/", "{", "}", "[", "]"]
    render({ :template => "show.html.erb" })
  end

  def process_input(input_string)
    # Split the input string into an array of words
    words = input_string.split(" ")

    # Initialize an empty result string
    result = ""

    # Iterate through the array of words
    words.each do |word|
      # Add the first letter of the word to the result string
      result += word[0]

      # If the word has any punctuation, add it to the result string
      result += word.gsub(/[A-Za-z0-9]/, "")
    end

    # Return the result string
    return result
  end
end
