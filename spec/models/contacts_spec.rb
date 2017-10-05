require 'rails_helper'

describe Contact do
it "is valid with name" do
  contact = Contact.new(name: '井田', email: 'test@gmail.com', content: 'テスト')
  expect(contact).to be_valid
end

it "is invalid without a name" do
  contact = Contact.new
  expect(contact).not_to be_valid
end

it "is valid with name" do
  contact = Contact.new
  contact.valid?
  expect(contact.errors[:name]).to include("を入力してください")
end
it "is valid with email" do
  contact = Contact.new(name: '井田', email: 'test@gmail.com', content: 'テスト')
  expect(contact).to be_valid
end

it "is invalid without a email" do
  contact = Contact.new
  expect(contact).not_to be_valid
end

it "is valid with email" do
  contact = Contact.new
  contact.valid?
  expect(contact.errors[:email]).to include("を入力してください")
end
it "is valid with content" do
  contact = Contact.new(name: '井田', email: 'test@gmail.com', content: 'テスト')
  expect(contact).to be_valid
end

it "is invalid without a content" do
  contact = Contact.new
  expect(contact).not_to be_valid
end

it "is valid with content" do
  contact = Contact.new
  contact.valid?
  expect(contact.errors[:email]).to include("を入力してください")
end
#  %w{name email content}.each do |column_name|
#   specify "#{column_name} は空であってはならない" do
#     contact = Contact.new(
#       name: '井田', email: 'test@gmail.com', content: 'テストss'
#     )
#     contact[column_name] = ''
#     expect(contact).not_to be_valid
#     expect(contact.errors[column_name]).to be_present
#   end
# end
end
