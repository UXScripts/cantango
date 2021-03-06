class ArticlesController < ApplicationController
  before_filter :authenticate_user!

  expose(:articles) { Article.all }
  expose(:article)
  
  def index
  end

  def admin
  end

  def guest
  end

  def admin_account
  end

  def show
  end

  def new
  end

  def create
    if article.save
      redirect_to article, :notice => "Successfully created article."
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if article.update_attributes(params[:article])
      redirect_to article, :notice => "Successfully updated article."
    else
      render :edit
    end
  end
  
  def destroy
    article.destroy
    redirect_to articles_url, :notice => "Successfully destroyed article."
  end
end
