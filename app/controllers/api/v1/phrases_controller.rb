module Api
  module V1
    class PhrasesController < ApplicationController
      def setup
        phrase = Phrase.all.order(:day)
        start_date = phrase.first.day
        end_date = phrase.last.day
        render json: {start_date: start_date, end_date: end_date}, status: :ok
      end
      def show
        phrase = Phrase.find_by_day(params[:id])

        if phrase.nil?
          render json: { error: 'No phrase for that day.' }, status: 404
        else
          response = {
              id: phrase.id,
              category: phrase.category.name,
              demonstration: url_for(phrase.demonstration),
              translations: []
          }
          phrase.translations.each do |translation|
            response[:translations].push(id: translation.id, translation: translation.content, definition: translation.definition, language: translation.language)
          end
          render json: response, status: :ok
        end
      end
      def categories
        data = []
        categories = Category.all
        categories.each do |category|
          info = { title: category.name, content: [] }
          category.phrases.where('day <= ?', Date.today).each do |phrase|
            info[:content].push({ title: phrase.word.content, date: phrase.day, demonstration: url_for(phrase.demonstration) })
          end
          data.push(info)
        end
        render json: data, status: :ok
      end
    end
  end
end