defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    cards = for value <- values do
      for suit <- suits do
        "#{value} of #{suit}"
      end
    end
    List.flatten(cards)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @spec contains?(any, any) :: boolean
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end

