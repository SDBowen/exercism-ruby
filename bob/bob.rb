class Bob
  def self.hey(remark)
    remark = remark.strip

    if remark[-1] == '?' && remark == remark.upcase
      "Calm down, I know what I'm doing!"
    elsif remark[-1] == '?'
      'Sure.'
    elsif remark =~ /^[^a-z]+$/ && remark =~ /[A-Z]/
      'Whoa, chill out!'
    else
      'Whatever.'
    end
  end
end
