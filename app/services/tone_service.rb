class ToneService
  def self.tone_search(poem)
    response = conn.get("instances/c60d26b6-cc0b-4da7-b2b0-b142638d9672/v3/tone") do |req|
      req.params['version'] = '2017-09-21'
      req.params['text'] = poem.lines
    end
    parse_json(response)
  end

  def self.conn
    Faraday.new("https://api.us-south.tone-analyzer.watson.cloud.ibm.com") do |req|
      req.headers['Authorization'] = 'Basic YXBpa2V5OkF5UWUxTmNocTE3RlBVb1lOM2hQekZmLWlnZWpLMDZzaFFYVndnbmJQRC1E'
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end