# require 'rails_helper'
#
# describe User do
#   describe "validations" do
#     context "invalid attributes" do
#       it "is invalid without a username" do
#         user = User.new(password: "pass")
#         expect(user).to be_invalid
#       end
#
#       it "is invalid without a pasword" do
#         user = User.new(username: "marieta")
#         expect(user).to be_invalid
#       end
#     end
#
#     context "valid attributes" do
#       it "is invalid without a pasword" do
#         user = User.new(username: "marieta", password: "pass")
#         expect(user).to be_valid
#       end
#     end
#   end
#
#   describe "relationships" do
#     it "has many comments" do
#       user = User.new(username: "marieta", password: "pass")
#       expect(user).to respond_to(:comment)
#     end
#   end
# end
#   #
#   #   it "belongs to a category" do
#   #     job = Job.new(title: "Software", level_of_interest: 70, description: "Wahooo")
#   #     expect(job).to respond_to(:category)
#   #   end
#   #
#   #   it "has many comments" do
#   #     job = Job.new(title: "Software", level_of_interest: 70, description: "Wahooo")
#   #     expect(job).to respond_to(:comments)
