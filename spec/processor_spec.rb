# frozen_string_literal: true

require 'spec_helper'
require 'processor'

describe Processor do
  subject { described_class.new(records: records, method: method, field: field) }

  let(:method) { :add }
  let(:field) { :value }
  let(:records) { [{ value: 99 }] }

  describe '#do_work' do
    context 'with no records' do
      before do
        expect(subject).to receive(:values).and_return([])
      end

      it 'produces 0' do
        expect(subject.do_work).to eq(0)
      end
    end

    context 'unknown method' do
      let(:method) { :something_weird }

      it 'raises an exception' do
        expect do
          subject.do_work
        end.to raise_error(Processor::UnexpectedMethod)
      end
    end

    context 'with records' do
      # ...
    end
  end
end
