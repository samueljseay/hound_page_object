defmodule PageObject.Queries.Text do
  defmacro text(name, css_selector, _opts \\ []) do
    quote do
      scope = Module.get_attribute(__MODULE__, :scope) || ""

      if scope != "" do
        def unquote(name)(el) do
          IO.puts "Getting text for #{unquote(css_selector)} for element's first #{unquote(css_selector)}"
        end
      else
        def unquote(name)() do
          IO.puts "Getting text for #{unquote(css_selector)}"
        end
      end
    end
  end
end