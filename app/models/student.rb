# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(student_name)
    student_name = student_name.downcase
    array = []
    if student_name == ''
      self.all
    else
      self.all.collect do |student|
        if !!student.name
      if student.name.downcase.include?(student_name)
      array << student
      array
    end
  end
    end
  end
    end


end
