require 'pg'

class User

  def self.username_list
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
    result = connection.exec('SELECT user_name FROM users')
    result.map { |users| users['user_name'] }
  end

  def self.password_list
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
    result = connection.exec('SELECT password FROM users')
    result.map { |users| users['password'] }
  end

  def self.email_list
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
    result = connection.exec('SELECT email FROM users')
    result.map { |users| users['email'] }
  end

end
