class Customer
	include ActiveModel::Validations
	include ActiveModel::AttributeMethods
	include ActiveModel::Conversion
	extend  ActiveModel::Naming

	attr_accessor :id, :name, :ka

	require 'odbc'

	def self.all(kod = "")
		ds = ODBC.datasources()
		db = ODBC.connect("PT")
		cols = db.columns("PUFIRMA")
		q = db.run("SELECT D2001_F\xF6retagskod,D2021_F\xF6retag,D2127_S\xC4ljare FROM PUFIRMA WHERE D2101_Kund = 'J' and D2001_F\xF6retagskod like '%"+kod+"%'")
	end

end
