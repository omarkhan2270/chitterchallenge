require 'user'

describe User do

  describe '#username_list' do
    it 'checks the username' do
      expect(User.username_list).to include 'Max Francis'
    end
  end

  describe '#login' do

    it 'checks against database' do
      expect(User.username_list).to include 'Max Francis'
      expect(User.password_list).to include '1234'
      expect(User.email_list).to include 'Max.Francis@cgi.com'
    end

  end
end
