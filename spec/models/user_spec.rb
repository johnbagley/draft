require 'rails_helper'

RSpec.describe User, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject { FactoryGirl.create(:user) }
  its(:email) { should == 'jdbagley@gmail.com' }
  its(:password_digest) { should == 'wombat' }
  it { should_not be_admin }

end
