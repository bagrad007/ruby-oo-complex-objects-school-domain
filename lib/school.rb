require 'pry'
# code here!
class School
    attr_accessor :roster
    def initialize(school)
        @school = school
        @roster = {}
    end


    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end
    def grade(grade)
        @roster[grade].sort
    end
    def sort
        @roster.each do |grade, student|
            student.sort!
        end
    end
end