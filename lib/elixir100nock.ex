defmodule Elixir100nock.App do
  use Application

  import One

  def start(_type, _args) do
    IO.puts "=======================================================================\n"
    IO.puts "|                                                                     |\n"
    IO.puts "|     言語処理100本ノック http://www.cl.ecei.tohoku.ac.jp/nlp100/#    |\n"
    IO.puts "|     これをElixirでやってみたよ                                      |\n"
    IO.puts "|                                                                     |\n"
    IO.puts "=======================================================================\n"
    One.reverseOrder()

  end
end
