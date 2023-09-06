require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  describe 'initialize' do 
    it 'exist' do 
      course = Course.new("Calculus", 2)
      expect(course).to be_instance_of(Course)
    end 
  end 

  describe 'attributes' do 
    it ' Has attributes' do 
      course = Course.new("Calculus", 2)
      expect(course.name).to eq("Calculus")
      expect(course.capacity).to eq(2)
    end 
  end 

  describe ' #No students' do 
    it 'Has no students' do 
      course = Course.new("Calculus", 2)
      expect(course.students).to eq([])
      expect(course.full?).to be(false)
    end 
  end 

  describe ' #Enroll students' do 
    it ' Enrolls'do 
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll([student1])
      course.enroll([student2])
      expect(course.students).to eq([student1],[student2])
      expect(course.full?).to be(true)
    end 
  end 



 
   
  
end
