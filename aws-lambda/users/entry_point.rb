require_relative 'application/create_user'

def create_users_handler(event)
    user = CreateUser.new()
    user.run(event)
end