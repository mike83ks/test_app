require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe User do
    before(:each) do
      @user = User.new()
    end

    it "should be valid" do
      expect(@user.name).to eq ''
    end


  end
end
#email: 'ash@gmail.com', password: '123456', name: 'Ash'
