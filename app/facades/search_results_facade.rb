class SearchResultsFacade
  def initialize(house)
    @house = house
  end

  def student_count
    student_info.count
  end

  def all_students
    student_info.map do |student_data|
      Student.new(student_data)
    end
  end

  private

  def student_info
    @student_info ||= service.get_students
  end

  def service
    @service ||= HogwartsService.new(@house)
  end

end
