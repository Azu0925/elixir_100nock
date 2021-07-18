defmodule One do
  def reverseOrder do
    IO.puts "文字列'stressed'の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．"

    text = "stressed"
    len = String.length(text)
    String.split("stressed", "", trim: true)
  end
end
