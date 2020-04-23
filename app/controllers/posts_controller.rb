class PostsController < ApplicationController
  before_action :authenticate_user


  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post =Post.new
  end

  def create
    @post = Post.new(
      content: params[:content],
      address: params[:address],
      phonenumber: params[:phonenumber],
      agreement: params[:agreement],
      remarka: params[:remarka]
    )
    if @post.save
      flash[:notice] = "新規クライアントをを登録しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def address
    @post = Post.find_by(id:params[:id])
  end

  def phonenumber
    @post = Post.find_by(id:params[:id])
  end

  def agreement
    @post = Post.find_by(id:params[:id])
  end

  def remarka
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id:params[:id])
    @post.content = params[:content]
    if @post.save
        flash[:notice] = "投稿を編集しました"
        redirect_to("/posts/index")
      else
        render("posts/edit")
      end
  end

  def updateaddress
    @post = Post.find_by(id:params[:id])
    @post.address = params[:address]
    @post.save
    redirect_to("/posts/index")
  end

  def updatephonenumber
    @post = Post.find_by(id:params[:id])
    @post.phonenumber = params[:phonenumber]
    @post.save
    redirect_to("/posts/index")
  end

  def updateagreement
    @post = Post.find_by(id:params[:id])
    @post.agreement = params[:agreement]
    @post.save
    redirect_to("/posts/index")
  end

  def updateremarka
    @post = Post.find_by(id:params[:id])
    @post.remarka = params[:remarka]
    @post.save
    redirect_to("/posts/index")
  end

  def destroy
    @post = Post.find_by(id:params[:id])
    @post.destroy
    @post.save
    flash[:notice] ="登録企業を削除しました"
    redirect_to("/posts/index")
  end

end
