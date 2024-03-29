require 'sqlite3'

class User
  def initialize
    @db = SQLite3::Database.new 'db.sql'
    create_table
  end

  def create(user_info)
  end

  def find(user_id)
  end

  def all
  end

  def update(user_id, attribute, value)
  end

  def destroy(user_id)
  end

  private

  def create_table
  end
end
