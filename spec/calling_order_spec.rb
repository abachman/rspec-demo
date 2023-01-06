# frozen_string_literal: true

require 'spec_helper'
require 'processor'

# One test from  processor_spec with puts statements in every block.
# Question: what order do you think they'll appear in?

describe Processor do
  before do
    puts '>before'
  end
  after do
    puts '>after'
  end
  puts '>describe Processor'

  subject {
    puts '>  subject'
    described_class.new(records: records, method: method, field: field)
  }

  let(:method) {
    puts '>  let(:method)'
    :add
  }
  let(:field) {
    puts '>  let(:field)'
    :value
  }
  let(:records) {
    puts '>  let(:records)'
    [{ value: 99 }]
  }

  describe '#do_work' do
    puts ">  describe '#do_work'"
    context 'with no records' do
      puts ">    context 'with no records'"
      before do
        puts '>      before'
        expect(subject).to receive(:values).and_return([])
      end
      after do
        puts '>      after'
      end

      it 'produces 0' do
        puts ">      it 'produces 0'"
        expect(subject.do_work).to eq(0)
      end
    end
  end
end
