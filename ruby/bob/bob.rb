class Bob
  def hey sentence
    return "Whoa, chill out!" if sentence.strip.end_with? "!" or sentence.strip =~ /[A-Z ]{5,}+/ and !sentence.include? "Let's "
    return "Sure." if sentence.end_with? "?" 
    return "Fine. Be that way!" if sentence.strip.empty?
    "Whatever." 
  end
end
