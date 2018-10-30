require 'user'

describe User do

  describe '#username_list' do
    expect(subject.username_list).to include 'Max'
  end

  describe '#login' do

    it 'checks against database' do
      expect(subject.username_list).to include 'Max'
      expect(subject.password_list).to include '1234'
      expect(subject.email_list).to include 'Max.Francis@cgi.com'
    end

  end
end
