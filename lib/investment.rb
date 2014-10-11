class Investment
  attr_reader :initial_deposit, :deposit_rate, :term
  attr_accessor :investment_type

  INVESTMENT_TYPES = [:cumulative, :noncumulative]

  def initialize(initial_deposit, deposit_rate, term)
    @initial_deposit = initial_deposit
    @deposit_rate = deposit_rate
    @term = term
  end

  def deposit_rate
    to_percent @deposit_rate
  end

  def maturity_amount
    if investment_type == :cumulative
      round_up initial_deposit * (1 + deposit_rate/4 ) ** (term * 4)
    else
      initial_deposit
    end
  end

  def investment_type=(investment_type = nil)
    raise "Invalid Investment Type" unless INVESTMENT_TYPES.include?(investment_type)
    @investment_type = investment_type
  end

  def investment_type
    @investment_type || :cumulative
  end

  private

  def to_percent(amount)
    amount/100.to_f
  end

  def round_up(amount)
    amount.round
  end
end