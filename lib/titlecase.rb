=begin

titlecase.rb

*Author*::    Tamara Temple <tamara@tamaratemple.com>
*Copyright*:: Tamara Temple Web Development
*License*::   MIT
*Since*::     2013-03-25T07:05:02

== Description

A module that adds titlecase functionality to String

=end

require 'titlecase/version'

module Titlecase
  VERSION = '0.0.1'

  # Default stop words to be used if none specified
  DEFAULT_STOP_WORDS = %w[a an and or of the from by]


  # *stopwords*:: an array consisting of words to *not* capitalize in the string.
  # If nil or omitted, a set of default stop words will be used.
  def titlecase!(stopwords=nil)
    stopwords = DEFAULT_STOP_WORDS if stopwords.nil?
    stopwords.map!(&:downcase)
    self.gsub!(/\w+/) do |w|
      stopwords.include?(w.downcase) ? w.downcase : w.capitalize
    end.gsub!(/^\w/,&:capitalize)
  end

  # *stopwords*:: an array consisting of words to *not* capitalize in the string
  def titlecase(stopwords=nil)
    dup.titlecase!(stopwords)
  end
  
end

String.send(:include,Titlecase)
