defmodule GiphyScraper do
  @type response :: %Elixir.HTTPoison.Response{body: Bitstring, request: HTTPoison.Request, request_url: Bitstring, status_code: integer}

  def return_gif_for_given_search_term(query) do
    # response = make_request(query)
    # Map.keys response
    with {:ok, %{body: body}} <- make_request(query) do
      body
    end
  end
  # def search(query) do
  #   query
  #   |> make_request
  #   |> parse_response
  #   |> decode_body_from_json
  # end
  #
  defp make_request(query) do
    url = "http://api.giphy.com/v1/gifs/search?q=#{query}&api_key=SVjtbsi8sycHYZ4KhkTtXV2b5Z72ehTG&limit=2"
    HTTPoison.get(url)
  end
  #
  # # @spec parse_response(response) :: body
  # defp parse_response(response) do
  #   %{body: body} = HTTPoison.process_response(response)
  #
  #   body
  # end
  #
  # defp decode_body_from_json(body) do
  #   # [
  #   #   "analytics", "analytics_response_payload", "bitly_gif_url", "bitly_url",
  #   #   "content_url", "embed_url", "id", "images", "import_datetime", "is_sticker",
  #   #   "rating", "slug", "source", "source_post_url", "source_tld", "title",
  #   #   "trending_datetime", "type", "url", "user", "username"
  #   # ]
  #   #
  #   # {:ok, %{"data" => data}} = Jason.decode(body)
  #   #
  #   # [head|tail] = data
  #   # %{"title" => title, "id" => id, "url" => url, "username" => username} = head
  #   with {:ok, %{"data" => data}} <- Jason.decode(body) do
  #
  #   end
  # end

end
