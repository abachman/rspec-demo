require 'spec_helper'
require 'processor'

describe Processor do
  subject { described_class.new(records: records, method: method, field: field) }

  let(:method) { :add }
  let(:field) { :value }
  let(:records) { [] }

  describe "#do_work" do
    context "with no records" do
      it "should produce 0" do
        expect(subject.do_work).to eq(0)
      end
    end

    context "unknown method" do
      let(:method) { :something_weird }

      it "should raise an exception" do
        expect {
          subject.do_work
        }.to raise_error(Processor::UnexpectedMethod)
      end
    end
  end
end