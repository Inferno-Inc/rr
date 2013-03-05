require File.expand_path("#{File.dirname(__FILE__)}/../../spec_helper")

module RR
  module Adapters
    describe Rspec do
      attr_reader :fixture, :subject, :method_name
      describe "#setup_mocks_for_rspec" do
        before do
          @fixture = Object.new
          fixture.extend Rspec

          @subject = Object.new
          @method_name = :foobar
        end

        it "resets the double_injections" do
          stub(subject).foobar
          ::RR::Injections::DoubleInjection.instances.should_not be_empty

          fixture.setup_mocks_for_rspec
          expect(::RR::Injections::DoubleInjection.instances).to be_empty
        end
      end

      describe "#verify_mocks_for_rspec" do
        before do
          @fixture = Object.new
          fixture.extend Rspec

          @subject = Object.new
          @method_name = :foobar
        end

        it "verifies the double_injections" do
          mock(subject).foobar

          expect {
            fixture.verify_mocks_for_rspec
          }.to raise_error(::RR::Errors::TimesCalledError)
          expect(::RR::Injections::DoubleInjection.instances).to be_empty
        end
      end

      describe "#teardown_mocks_for_rspec" do
        before do
          @fixture = Object.new
          fixture.extend Rspec

          @subject = Object.new
          @method_name = :foobar
        end

        it "resets the double_injections" do
          stub(subject).foobar
          ::RR::Injections::DoubleInjection.instances.should_not be_empty

          fixture.teardown_mocks_for_rspec
          expect(::RR::Injections::DoubleInjection.instances).to be_empty
        end
      end
    end
  end
end
