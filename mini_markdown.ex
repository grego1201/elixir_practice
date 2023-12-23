defmodule MiniMarkdown do
  def to_html(text) do
    text
      |> italics
      |> bold
      |> p
  end

  def italics(text) do
    Regex.replace(~r/\*(.*)\*/, text, "<em>\\1</em>")
  end

  def bold(text) do
    Regex.replace(~r/\*\*(.*)\*\*/, text, "<strong>\\1</strong>")
  end

  def p(text) do
    Regex.replace(~r/(\r\n|\r|\n|^)+([^\r\n]+)((\r\n|\r|\n)+$)?/, text, "<p>\\2</p>")
  end

  def test_string do
    """
    I *so* enyouted eating that burrito and the hot sauce was **amazing**!

    What do you thikn of it?

    end of line
    """
  end
end
