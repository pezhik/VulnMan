require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'scanstarted'" do
    it "returns http success" do
      get 'scanstarted'
      response.should be_success
    end
  end

  describe "GET 'newscan'" do
    it "returns http success" do
      get 'newscan'
      response.should be_success
    end
  end

  describe "GET 'reports'" do
    it "returns http success" do
      get 'reports'
      response.should be_success
    end
  end

end
