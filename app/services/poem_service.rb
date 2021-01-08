class PoemService
  def self.author_search(params)
    response = conn.get("/author/#{params[:author]}")
    parse_json(response)
  end

  def self.conn
    Faraday.new('https://poetrydb.org')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
  
end