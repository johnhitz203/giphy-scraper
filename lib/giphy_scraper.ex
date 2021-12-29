defmodule GiphyScraper do
  defdelegate return_gifs(query, quantity \\ 25),
    to: GiphyScraper.GiphyScraper,
    as: :return_gifs_for_search_term
end
