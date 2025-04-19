# frozen_string_literal: true

require_relative "text_utils/version"

module TextUtils
  def self.camel_case(str)
    words = str.split(' ')
    result = []
    words_counter = words.length-1
    result << words[0].downcase
    for i in 1..words_counter
        l = words[i].length
        result << words[i][0].upcase + words[i][1..l].downcase
    end
    result.join
  end
end
