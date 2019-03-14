require 'rails_helper'

RSpec.feature "Comment", :type => :feature do
	let(:post) { Post.new(
	  content: "sample content", 
	  author: "god"
	)}

	before do
	  post.save!
	  visit "/posts/#{post.id}"
	end

	def write_comment
	  fill_in 'comment[content]', with: 'nice comment'
	  fill_in 'comment[author]', with: 'super admin'
	  click_button 'Comment'
	end

	scenario "post page should be created" do
	  expect(page).to have_text("sample")
	end

	scenario "comments can be made" do
	  write_comment
	  expect(page).to have_text("Comment")
	  expect(page).to have_text("super admin")
	end

	scenario "comments can be deleted" do
	  write_comment
	  expect(page).to have_text("Comment")
	  expect(page).to have_text("nice comment")
	  
	  click_link 'delete'
	  expect(page).to_not have_text("nice comment")
	end
end
