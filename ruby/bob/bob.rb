class Bob
  def hey(sentence)
    return 'Whoa, chill out!' if sentence.strip.end_with?('!') || sentence.strip =~ /[A-Z ]{5,}+/ && !sentence.include?("Let's ")
    return 'Sure.' if sentence.end_with? '?'
    return 'Fine. Be that way!' if sentence.strip.empty?
    'Whatever.'
  end
end
