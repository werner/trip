class ArticlesController < ApplicationController
  before_action :signed_in_user, only: [:create, :edit, :new]
  
  def new
    @article = current_user.articles.build if signed_in?
  end
  
  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = "Thank you for submitting!"
      redirect_to @article
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @article.update_attributes(article_params)
      flash[:success] = "Article updated"
      redirect_to @article  
    else
      render 'edit'
    end
  end
  
  private
    def article_params
     params.require(:article).permit(:content)
   end
end
