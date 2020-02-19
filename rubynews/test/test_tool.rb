###
#  to run use
#     ruby -I ./lib -I ./test test/test_tool.rb


require 'helper'


class TestTool < MiniTest::Test


  def test_main
    RubyNews.main( [] )
    RubyNews.main( ['up'])
  
    assert true
    ## assume everything ok if get here
  end

end # class TestTool
