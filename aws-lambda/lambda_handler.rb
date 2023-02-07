require 'logger'
require 'json'

require_relative 'users/entry_point'
require_relative 'helpers/args_entry'

@log = Logger.new(STDOUT)
@log.debug("Start...")

def main
    args = get_params()
    event = args[0]
    context = nil
    {
        "create_users" => lambda { create_users_handler(event=event, context=context) },
    }["#{args[1]}"].call
end

puts main()

#'ruby lambda_handler.rb '{"test":"r"}' --function create_users'