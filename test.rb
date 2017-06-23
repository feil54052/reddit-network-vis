    def clean_msg(text)
      wrapped_text = word_wrap text
      escape_quotes wrapped_text
      soap text
    end

    #search the commit for profanity and if it exists remove the commit
    def soap(text)
     profanity = ["fuck", "bitch", "cunt", "hate", "pissed", "balls", "screw", "ACM"]
      profanity.each { |swear| text.sub!(swear, "!@%&") }
    end
    # conversion for quotation marks to avoid shell interpretation
    # does not seem to be a safe way to escape cross-platform?
    def escape_quotes(text)
      text.gsub(/"/, "''")
    end

    # convenience method for word wrapping
    # based on https://github.com/cmdrkeene/memegen/blob/master/lib/meme_generator.rb
    def word_wrap(text, col = 27)
      wrapped = text.gsub(/(.{1,#{col + 4}})(\s+|\Z)/, "\\1\n")
      wrapped.chomp!
    end


#test goes here
text = "hello world this is a bitch commit"
clean_msg text
puts text