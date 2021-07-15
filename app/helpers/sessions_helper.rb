module SessionsHelper
  # 渡されたユーザーでログインする
  def log_in(user)
    session[:user_id] = user.id
  end

  # 現在ログイン中のユーザーを返す（いる場合）
  def current_user
    if session[:user_id]
      # find だとユーザーがログインしていない場合に例外が発生するので find_by で検索
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  #受け取ったユーザーがログイン中のユーザーと一致すれば true を返す
  def current_user?(user)
    user == current_user
  end

  # ユーザーがログインしていれば true、その他なら false を返す
  def logged_in?
    !current_user.nil?
  end

  # 現在のユーザーをログアウトする
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end