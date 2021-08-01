defmodule One do
  def zero do
    IO.puts "文字列'stressed'の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．"
    reverse("", String.split("stressed", "", trim: true))
  end

  def reverse(text, list) do
    case list do
      [] ->
        IO.puts("A. " <> text)
        IO.puts("\n============================")
      list ->
        text = text <> List.last(list)
        reverse(text, List.delete_at(list, length(list) - 1))
    end
  end
end
