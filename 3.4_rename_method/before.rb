class UserService
  USERNAME = "yo"
  PASSWORD = "man"

  class << self
    def lgn username, password
      username == USERNAME && password = PASSWORD
    end
  end
end