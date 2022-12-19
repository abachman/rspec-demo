# frozen_string_literal: true

class Processor
  class UnexpectedMethod < StandardError; end

  attr_reader :method

  def initialize(records: [], method: :add, field: :value)
    @records = records
    @method = method
    @field = field
  end

  def do_work
    case method
    when :add
      values.reduce(0) { |memo, obj| memo + obj.to_f }
    when :mult
      values.reduce(1) { |memo, obj| memo * obj.to_f }
    else
      raise UnexpectedMethod, "unexpected method, #{method}"
    end
  end

  private

  def values
    @records.map do |record|
      record[@field]
    end
  end
end
