class Book
  @@on_shelf = []
  @@on_loan = []

  def due_date(time)
    @due_date = Time.now + time
  end

  def initialize

  end

  def self.create

  end

  def self.available
    p @@on_shelf
  end

  def self.borrowed
    p @@on_loan
  end

  def self.browse
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
