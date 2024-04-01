require 'sqlite3'

class User
  def initialize(db_name)
    @db = SQLite3::Database.new(db_name)
    create_table
  end

  def create(user_info)
    @db.execute("INSERT INTO users (firstname, lastname, age, password, email) VALUES (?, ?, ?, ?, ?)", user_info)
    @db.last_insert_row_id
  end

  def find(user_id)
    @db.execute("SELECT * FROM users WHERE id=?", user_id).first
  end

  def all
    @db.execute("SELECT id, firstname, lastname, age, email FROM users").map { |row| { id: row[0], firstname: row[1], lastname: row[2], age: row[3], email: row[4] } }
  end

  def update(user_id, attribute, value)
    @db.execute("UPDATE users SET #{attribute}=? WHERE id=?", value, user_id)
    find(user_id)
  end

  def destroy(user_id)
    @db.execute("DELETE FROM users WHERE id=?", user_id)
  end

  private

  def create_table
    @db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        firstname VARCHAR(255),
        lastname VARCHAR(255),
        age INTEGER,
        password VARCHAR(255),
        email VARCHAR(255)
      );
    SQL
  end
end
