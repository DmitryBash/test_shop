require 'rails_helper'

RSpec.describe RoleSetting, type: :model do
  it { should have_and_belong_to_many(:roles) }
end
