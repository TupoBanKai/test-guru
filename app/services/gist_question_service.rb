class GistQuestionService

  def initialize(question, client: nil)
    @question = question
    @test = @question.test
    @client = client || GitHubClient.new
  end

  def call
    gist = @client.create_gist(gist_params)
    Gist.create(gist)
  end

  private

  def gist_params
    {
      description: "#{I18n.t("question_about")} from TestGuru",
      files: {
        'test-guru-question.txt' => {
          content: 'gist_content'
        }
      }
    }
  end

  def gist_content
    content = [@question.body]
    content += @question.answers.pluck(:body)
    content.join("\n")
  end

  def set_params

  end

end
