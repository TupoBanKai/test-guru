class Admin::TestsController < Admin::BaseController

  before_action :find_test, only: [:show, :start, :desrtoy, :update, :edit]

  def index
    @tests = Test.all
  end

  def show
    @question = @test.questions
  end

  def edit
  end

  def new
    @test = Test.new
  end

  def create
    noi = test_params.merge(creator_id: current_user.id)
    Test.create!(noi)
    redirect_to admin_tests_path
  end

  def destroy
    @test.destroy
    redirect_to tests_path
  end

  def start
    current_user.tests.push(@test)
    redirect_to current_user.test_passage(@test)
  end

  private

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end

  def find_test
    @test = Test.find(params[:id])
  end

end
