module QuizHelper

	def find_quiz(id)
		@quiz = Quiz.where(learn_id: params[:id])
	end

	def check_user_answers(quiz)
		@quiz = Quiz.find(quiz)
		@userAnswer = UserQuizAnswer.where(quiz_id: quiz, user_id: current_user.id)
		@questions = @quiz.questions.count
		@correct = 0
		
	end


	def answer_content(answer)
		@answer = Answer.find(answer)
		@answerContent = @answer.content
	end

	def question_content(question)
		@question = Question.find(question)
	end
end

