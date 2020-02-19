class Museum

  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    exhibits << exhibit
  end

  def recommend_exhibits(patron)
    @exhibits.find_all { |exhibit| patron.interests.include?(exhibit.name) }
  end

  def admit(patron)
    patrons << patron
  end

  def patrons_by_exhibit_interest
    pbei = {}
    exhibits.each do |exhibit|
      pbei[exhibit] = []
      patrons.each do |patron|
        pbei[exhibit] << patron if recommend_exhibits(patron).include?(exhibit)
      end
    end
    pbei
  end

  def ticket_lottery_contestants(exhibit)
    patrons.find_all do |patron|
      patron.interests.include?(exhibit.name) && patron.spending_money < exhibit.cost
    end
  end

  def draw_lottery_winner(exhibit)
    ticket_lottery_contestants(exhibit).sample
  end


end
