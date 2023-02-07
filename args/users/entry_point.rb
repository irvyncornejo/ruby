require_relative 'create_user'

def create_users_handler(event)
    user = Users.new()
    user.create_user(event)
end