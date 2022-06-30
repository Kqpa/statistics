require "./utils/statistics"
stats = Utils::Statistics.new

# Markdown
BOLD = "\e[1m"
UNDERLINE = "\e[4m"
RESET = "\e[0m"

# Data passed into the functions
DATA = [1, 2, 3, 4, 5]

puts "\
[#{BOLD}Array#{RESET}]       #{UNDERLINE}#{DATA}#{RESET}\n\
[#{BOLD}.sum()#{RESET}]      #{UNDERLINE}#{stats.sum(DATA)}#{RESET}\n\
[#{BOLD}.max()#{RESET}]      #{UNDERLINE}#{stats.max(DATA)}#{RESET}\n\
[#{BOLD}.min()#{RESET}]      #{UNDERLINE}#{stats.min(DATA)}#{RESET}\n\
[#{BOLD}.range()#{RESET}]    #{UNDERLINE}#{stats.range(DATA)}#{RESET}\n\
[#{BOLD}.median()#{RESET}]   #{UNDERLINE}#{stats.median(DATA)}#{RESET}\n\
[#{BOLD}.mean()#{RESET}]     #{UNDERLINE}#{stats.mean(DATA)}#{RESET}\n\
[#{BOLD}.mode()#{RESET}]     #{UNDERLINE}#{stats.mode(DATA)}#{RESET}"
