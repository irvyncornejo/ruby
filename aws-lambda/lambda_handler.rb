require "logger"
require 'json'

require_relative 'users/entry_point'
require_relative 'utils/utils'

@log = Logger.new(STDOUT)
@log.debug("Start...")

def main
    args = get_params()
    {
        "create_users" => lambda  { create_users_handler(event=args[0]) }
    }["#{args[1]}"].call
end

puts main()

#'ruby lambda_handler.rb '{"test":"r"}' --function create_users'