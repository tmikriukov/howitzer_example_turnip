module CommentsListSteps

  attr_accessor :article,:comment1, :comment2
  # GIVEN

  step 'there is an article with created by user comments to this article' do
    self.article = create(:article)
    self.comment1 = self.article.comments.create(body: "comment_1", user_id: self.user.id)
    self.comment2 = self.article.comments.create(body: "comment_2", user_id: self.user.id)
  end

  # WHEN

  # THEN

  step "I should see comments to this article with user's email in 'Commenter' heads" do
    comment1 = self.comment1
    comment2 = self.comment2
    ArticlePage.on do
      expect(text).to include(comment1.body)
      expect(text).to include(comment2.body)
      expect(text).to include(comment1.user.email)
      expect(text).to include(comment2.user.email)
    end
  end

end

RSpec.configure { |c| c.include CommentsListSteps, comments_list_steps: true }