module SeedHelper::Insert
  attr_accessor :data
  def target_model
    nil
  end

  def initialize
    self.data = nil
  end

  def insert_column
    self.data.each do |hash|
      target_model.seed do |s|
        _insert_column s, hash
      end
    end
  end

  def _insert_column obj, hash
    hash.each do |col, val|
      setter = col.to_s.underscore + '='
      obj.send(setter, val) unless setter == "id="
    end
  end
end