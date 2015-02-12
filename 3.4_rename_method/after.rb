class UserService
  USERNAME = "yo"
  PASSWORD = "man"

  class << self
    def sign_in username, password
      username == USERNAME && password = PASSWORD
    end
  end
end