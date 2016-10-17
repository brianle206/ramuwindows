class QuizController < ApplicationController
  def index
    @courses = Learn.all
  end

  def new
    @quiz = Quiz.new
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
  end

  def create
    @quiz = Learn.find(params[:id])
    @quiz_make = @quiz.quizzes.build(quiz_params)
    if @quiz_make.save
      redirect_to root_path
    end
  end
  def show
    
  end

  def create_user_answer
    @userAnswer = UserQuizAnswer.create(user_answer_params)
    if @userAnswer.save
      redirect_to :back
    end

  end

  def destroy
  end

  private 
  def quiz_params
    params.require(:quiz).permit(:title, :learn_id, 
      questions_attributes:[:question, :answer, :quiz_id,
        answers_attributes:[:content, :question_id]]
      )
  end
  def question_params
    params.require(:question).permit(:question, :answer, :quiz_id)
  end
  def user_answer_params
    params.require(:user_quiz_answer).permit(:quiz_id, :user_id, :answer_id, :question_id)
  end
end
