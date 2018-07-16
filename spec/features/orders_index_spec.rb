require 'rails_helper'

feature 'orders index' do
	scenario 'list all' do
		expect { visit('/orders') }.to make_database_queries(count: 3)
	end

	scenario 'list all' do
		expect { visit('/orders_include') }.to make_database_queries(count: 2)
	end

	scenario 'list all' do
		expect { visit('/orders_join') }.to make_database_queries(count: 1)
	end
end
