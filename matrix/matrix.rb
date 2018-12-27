class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @rows = create_rows(string)
    @columns = create_columns
  end

  private

  def create_rows(text)
    strings_matrix = text.split("\n").map(&:split)

    strings_matrix.map do |array|
      array.map(&:to_i)
    end
  end

  def create_columns
    matrix_columns = []

    i = 0
    while i < rows.length
      matrix_columns << rows.map { |row| row[i] }

      i += 1
    end

    matrix_columns
  end
end
