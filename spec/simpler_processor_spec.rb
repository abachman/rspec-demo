# frozen_string_literal: true

require 'spec_helper'
require 'processor'

describe 'Processor' do
  it "returns 0 with no records" do
    subject = Processor.new(records: [], method: :add, field: :whatever)
    expect(subject.do_work).to eq(0)
  end

  it "raises error with invalid method" do
    subject = Processor.new(records: [], method: :something_weird, field: :whatever)
    expect do
      subject.do_work
    end.to raise_error(Processor::UnexpectedMethod)
  end
end
