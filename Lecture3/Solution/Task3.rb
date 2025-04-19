filters = {
    timestamp_filter: -> (msg){"#{Time.now}: #{msg}"},
    upcase_filter: ->(msg){msg.upcase},
    emoji_filter: ->(msg){"#{msg} 😊"}
}
def log_message(msg, filter = nil)
    if filter != nil
        puts filter.call(msg)
    else
        puts msg
    end
end
log_message("Ali")
log_message("Zina",filters[:emoji_filter])
log_message("Time Now",filters[:timestamp_filter])