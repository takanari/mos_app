module MosHelper
  def new_line(s)
    # "\n" を "<br/>" に変換する
    h(s).gsub(/(\r\n?)|(\n)/, "<br />").html_safe
    #s.gsub(/\r\n|\r|\n/, "<br />")
  end
end
