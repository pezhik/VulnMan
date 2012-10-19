require 'spec_helper'

describe HomeController do

  describe "GET 'startscan'" do
    it "returns http success" do
      get 'startscan'
      response.should be_success
    end
  end

end
