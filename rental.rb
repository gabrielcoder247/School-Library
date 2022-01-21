require './book'
require './person'

class Rental
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end
  attr_accessor :date
  attr_reader :book, :person

  def book=(book)
    @book = book
    book.rental.push(self) unless book.rental.include?(self)
  end

  def person=(person)
    @person = person
    person.rental.push(self) unless person.rental.include?(self)
  end
end
