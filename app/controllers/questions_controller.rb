class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # recuperer le param question
    @question = params[:ask]
    # passer la question a la vue pour l'affichage

    # construire la reponse
    if @question == "I am going to work right now!"
      @silly = "Great !"
    elsif @question.include?('?')
      @silly = "Silly question, get dressed and go to work!"
    else @silly = "I don't care, get dressed and go to work!"
    end
  end
end
    # passer la reponse à la vue
