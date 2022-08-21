require 'pry'

class String
  attr_accessor :string

  def sentence?
    self.end_with?(".")

  end

  def question?
    self.end_with?('?')

  end

  def exclamation?
    self.end_with?('!')

  end

  def count_sentences
    self.split(/(?<=[.!?]).(?=[a-zA-Z])/).count

  end
end
mandem = String.new('Uweeh, wacha tuh!!')
puts mandem.sentence?
puts mandem.count_sentences
