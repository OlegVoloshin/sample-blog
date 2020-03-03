class ArticlesController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :create, :update, :destroy]

  def index
    @articles = Article.all
    
  end

  def show
    @article = Article.find(params[:id])
    
  end

  def new    
  end
  
 def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article # прерывает запрос и возвращает в браузер редирект команду на определенную страницу и браузер следующим запросом эту страницу получает
    else
      render action: 'new'   # render не прерывает запрос текущий, а продолжает его дальше   
    end

  end

  def edit
    @article = Article.find(params[:id])
    
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article #делаем редирект на эту самую статью
    else
      render action: 'edit'      
    end    
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
    #redirect_to action: :index #(так тоже можно)
  end

  private  #защита от хакинга

  def article_params # возвращает список обьектов
    params.require(:article).permit(:title, :text)# конфигурация этих обьектов
  end

end
