class Book
  @@on_shelf = []
  @@on_loan = []

  def due_date(time)
    @due_date = Time.now + time
  end

  def initialize(title, author, isbn_13)
    @title  = title
    @author = author
    @isbn_13 = isbn_13
  end

  def self.create(title, author, isbn_13)
    new_book = Book.new(title, author, isbn_13)
    @@on_shelf << new_book
    new_book
  end

  def self.available
    @@on_shelf
  end

  def self.borrowed
    p @@on_loan
  end

  def self.browse
    @@on_shelf.sample

    # This class method should return a random book from @@on_shelf
    # (you may need to consult the Array docs to figure out how to do this).
  end

  def lent_out?
    # This instance method return true if a book has already been borrowed
    # and false otherwise.
  end

  def self.current_due_date
    # This class method should return the due date for books taken out today.
    # It's up to you to decide how far in the future the due date should be.
    # You can refer to the section about Time above for help getting started,
    # and don't hesitate to ask for help if you're stuck!
  end

  def borrow

  end

  def return_to_library

  end

  def self.overdue

  end
end


sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
puts Book.browse.inspect # #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221"> (this value may be different for you)
puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
puts Book.available.inspect # [#<Book:0x00555e82acde20 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431">, #<Book:0x00555e82acdce0 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
# puts Book.borrowed.inspect # []
# puts sister_outsider.lent_out? # false
# puts sister_outsider.borrow # true
# puts sister_outsider.lent_out? # true
# puts sister_outsider.borrow # false
# puts sister_outsider.due_date # 2017-02-25 20:52:20 -0500 (this value will be different for you)
# puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
# puts Book.borrowed.inspect # [#<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=2017-02-25 20:55:17 -0500>]
# puts Book.overdue.inspect # []
# puts sister_outsider.return_to_library # true
# puts sister_outsider.lent_out? # false
# puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">, #<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=nil>]
# puts Book.borrowed.inspect # []
