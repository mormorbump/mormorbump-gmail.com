class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def is_true?
    if self.choice == self.question.answer_num
      return "○"
    else
      return "×"
    end
  end
end
