class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @questions.each do |question|
      question.answers.build
    end
  end
end
