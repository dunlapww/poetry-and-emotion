class ToneService
  def self.tone_search(poem)
    response = conn.get("instances/#{ENV['IBM_URL']}/v3/tone") do |req|
      req.params['version'] = '2017-09-21'
      req.params['text'] = poem.lines
    end
    parse_json(response)
  end

  def self.conn
    Faraday.new("https://api.us-south.tone-analyzer.watson.cloud.ibm.com") do |req|
      req.headers['Authorization'] = "Basic #{ENV['IBM_API_KEY']}"
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end