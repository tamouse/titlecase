=begin rdoc

= TITLECASE_SPEC.RB

*Author*::      Tamara Temple <tamara@tamaratemple.com>
*Since*::       2013-03-25
*Copyright*::   (c) 2013 Tamara Temple Web Development
*License*::     MIT
  
=end

 
require 'titlecase'

describe "String responds to new methods" do
  it {String.new.should respond_to(:titlecase)}
  it {String.new.should respond_to(:titlecase!)}
end

describe "descructive functions" do
  it "should replace the string with title cased version" do
    initial = "the quick brown fox jumped over the lazy dog"
    expected = "The Quick Brown Fox Jumped Over the Lazy Dog"
    s = initial
    s.titlecase!.should == expected
    s.should == expected
  end
end

describe "non-descructive functions" do
  it "should return the string with title cased version, but not replace the original" do
    initial = "the quick brown fox jumped over the lazy dog"
    expected = "The Quick Brown Fox Jumped Over the Lazy Dog"
    s = initial
    s.titlecase.should == expected
    s.should == initial
  end
end
  
describe "stopwords" do
  it "should allow no stopwords" do
    initial = "a series of unfortunate events"
    expected = "A Series Of Unfortunate Events"
    s = initial
    s.titlecase([]).should == expected
  end

  it "should allow specified stopwords" do
    initial = "time flies like an arrow"
    expected = "Time Flies like an Arrow"
    stopwords = %w[like an]
    s = initial
    s.titlecase(stopwords).should == expected
  end

    
end
