defmodule Greetings do
  # Give greetings to the user
  # Say something special if same name as developer

  def greets do
    name = IO.gets("Hi, could you tell me your name please?\n")
    trimed_name = String.trim(name)

    phrase = case trimed_name do
      "Caroline" -> "Wow it's my favourite name! I would be named Caroline too."
      _ -> "It's a good name."
    end

    IO.puts "Nice to meet you #{trimed_name}. #{phrase}"
  end
end
