require_relative 'application/create_user'

def create_users_handler(execution_event)
    user = CreateUser.new()
    user.run(execution_event['event'])
end