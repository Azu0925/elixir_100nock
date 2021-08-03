defmodule One do
  def zero do
    IO.puts "文字列'stressed'の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．"
    reverse("", String.split("stressed", "", trim: true))
  end

  def one do
    IO.puts "「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．"
    text = String.split("パタトクカシーー", "", trim: true)
    |> List.to_tuple
    IO.puts("\nA. " <> elem(text, 0) <> elem(text, 2) <> elem(text, 4) <> elem(text, 6))
    IO.puts("\n==================================\n")
  end

  def two do
    IO.puts "「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．"
    police_car = "パトカー"
    taxi = "タクシー"

    IO.write "\n A. "
    for x <- 0..3 do
      police_car
      |> String.split("", trim: true)
      |> List.to_tuple
      |> elem(x)
      |> IO.write

      taxi
      |> String.split("", trim: true)
      |> List.to_tuple
      |> elem(x)
      |> IO.write

    end
    IO.puts "\n=================================\n"
  end

  defp reverse(text, list) do
    case list do
      [] ->
        IO.puts("\nA. " <> text)
        IO.puts("\n============================\n")
      list ->
        joined_text = text <> List.last(list)
        reverse(joined_text, List.delete_at(list, length(list) - 1))
    end
  end
end
