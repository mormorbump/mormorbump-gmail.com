class QuestionSeed
  include SeedHelper::Insert
  def target_model
    Question
  end

  def initialize
    self.data = [
        {answer_num: 1 , body: "答えは1の問題だよ"},
        {answer_num: 2 , body: "答えは2の問題だよ"},
        {answer_num: 3 , body: "答えは3の問題だよ"},
    ]
  end
end

question_seed = QuestionSeed.new
question_seed.insert_column