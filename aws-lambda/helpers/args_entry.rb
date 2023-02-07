def get_params
    args = []
    @log.info("Params #{ARGV[0]}")
    args.push(JSON.parse ARGV[0])
    args.push(ARGV[2])
    args
end