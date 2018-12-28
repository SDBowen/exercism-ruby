class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @rows = create_rows(string)
    @columns = rows.transpose
  end

  private

  def create_rows(text)
    strings_matrix = text.lines.map(&:split)

    strings_matrix.map do |array|
      array.map(&:to_i)
    end
  end
end
