module ControllerMacros
  def login
    before(:each) do
      # @request.env["devise.mapping"] = Devise.mappings[:user]
      user = User.new(name: "JohnDoe", email: "user@prueba.com", password: "password")
      sign_in user
    end
  end

end