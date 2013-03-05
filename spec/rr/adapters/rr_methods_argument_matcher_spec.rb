require File.expand_path("#{File.dirname(__FILE__)}/../../spec_helper")

module RR
  module Adapters
    describe RRMethods do
      describe "#anything" do
        it_should_behave_like "RR::Adapters::RRMethods"

        it "returns an Anything matcher" do
          expect(anything).to eq RR::WildcardMatchers::Anything.new
        end

        it "rr_anything returns an Anything matcher" do
          expect(rr_anything).to eq RR::WildcardMatchers::Anything.new
        end
      end

      describe "#is_a" do
        it_should_behave_like "RR::Adapters::RRMethods"

        it "returns an IsA matcher" do
          expect(is_a(Integer)).to eq RR::WildcardMatchers::IsA.new(Integer)
        end

        it "rr_is_a returns an IsA matcher" do
          expect(rr_is_a(Integer)).to eq RR::WildcardMatchers::IsA.new(Integer)
        end
      end

      describe "#numeric" do
        it_should_behave_like "RR::Adapters::RRMethods"

        it "returns an Numeric matcher" do
          expect(numeric).to eq RR::WildcardMatchers::Numeric.new
        end

        it "rr_numeric returns an Numeric matcher" do
          expect(rr_numeric).to eq RR::WildcardMatchers::Numeric.new
        end
      end

      describe "#boolean" do
        it_should_behave_like "RR::Adapters::RRMethods"

        it "returns an Boolean matcher" do
          expect(boolean).to eq RR::WildcardMatchers::Boolean.new
        end

        it "rr_boolean returns an Boolean matcher" do
          expect(rr_boolean).to eq RR::WildcardMatchers::Boolean.new
        end
      end

      describe "#duck_type" do
        it_should_behave_like "RR::Adapters::RRMethods"

        it "returns a DuckType matcher" do
          expect(duck_type(:one, :two)).to eq RR::WildcardMatchers::DuckType.new(:one, :two)
        end

        it "rr_duck_type returns a DuckType matcher" do
          expect(rr_duck_type(:one, :two)).to eq RR::WildcardMatchers::DuckType.new(:one, :two)
        end
      end
    end
  end
end
