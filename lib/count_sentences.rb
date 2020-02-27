require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_array = []
    self.split.collect do |i|
      if i.end_with?("!") or i.end_with?("?") or i.end_with?(".")
        new_array.push(i)
      end
    end
    new_array.length
  end
end
