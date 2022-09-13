class Stock < ApplicationRecord
    has_and_belongs_to_many :users

    has_many :transactions

    def self.client
        client = IEX::Api::Client.new(
            publishable_token: 'pk_d7c9543c74524df2b712630b34f2cdb6',
            secret_token: 'sk_bae1c522e90d4da6aae8437a2509a173',
            endpoint: 'https://cloud.iexapis.com/v1'
        )
        return client
    end

end
