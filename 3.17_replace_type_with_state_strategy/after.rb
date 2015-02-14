class User
  attr_reader :name, :type, :options

  def initialize name, type, options
    @name = name
    @type = type
    @options = options

    @strategy = case type
                  when :password
                    Auth::Password.new self
                  when :public_key
                    Auth::PublicKey.new self
                  when :oauth
                    Auth::OAuth.new self
                end
  end

  class << self
    def login name, options = {}
      user = USERS.find { |u| u.name == name }
      user.authenticate! options
    end
  end

  def authenticate! options
    @strategy.authenticated? options
  end
end

module Auth
  class Password
    def initialize user
      @user = user
    end

    def authenticated? options
      return @user.options[:password] == options[:password]
    end
  end

  class PublicKey
    def initialize user
      @user = user
    end

    def authenticated? options
      return public_key_matches?
    end

    def public_key_matches?
      # Do some logic
      true
    end
  end

  class OAuth
    def initialize user
      @user = user
    end

    def authenticated? options
      return oauth_authenticates?
    end

    def oauth_authenticates?
      # Do some logic
      true
    end
  end
end