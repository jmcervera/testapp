module Relations
  class Articles < ROM::Relation[:sql]
    schema(:articles) do
      attribute :id, Types::Serial
      attribute :titled, Types::String
      attribute :published, Types::Bool
    end

    def by_id(id)
      where(id: id)
    end

    def published
      where(published: true)
    end
  end
end
