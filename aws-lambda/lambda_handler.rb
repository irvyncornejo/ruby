require 'logger'
require 'json'

require_relative 'users/entry_point'
require_relative 'helpers/args_entry'

@log = Logger.new(STDOUT)
@log.debug("Start...")

def main
    args = get_params()
    funtion_name = args[1]
    execution_event = {'event' => args[0], 'context' => nil}
    {
        "create_users" => lambda { create_users_handler(execution_event=execution_event) },
    }["#{funtion_name}"].call
end

puts main()

#'ruby lambda_handler.rb '{"test":"r"}' --function create_users'