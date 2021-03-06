module Paymill
  class Payment < Base
    include Restful::Delete

    attr_reader :type, :client, :card_type, :is_recurring, :is_usable_for_preauthorization,
                :country, :expire_month, :expire_year, :card_holder, :last4,
                :code, :holder, :account,
                :iban, :bic

    protected
    def self.allowed_arguments
      [:token, :client]
    end

    def self.mandatory_arguments
      [:token]
    end

  end
end
