require './person'

class Student < Person
  def initialize(age, classroom, name = 'unkown', parent_permission: true)
    super(age, name)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hockey
    "¯\(ツ)/¯"
  end
end
