=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
class PayoutMethodTransferReasonEnum
  
  PERSONAL_ACCOUNT = "personal_account".freeze
  DONATIONS_AND_GIFTS = "donations_and_gifts".freeze
  THIRD_PARTY_PERSON_ACCOUNT = "third_party_person_account".freeze
  MORTGAGE_REPAYMENTS = "mortgage_repayments".freeze
  BUSINESS_TRAVEL_PAYMENTS = "business_travel_payments".freeze
  PERSONAL_TRAVEL_PAYMENTS = "personal_travel_payments".freeze
  TUITION_FEES = "tuition_fees".freeze
  FINANCIAL_COMMISSION_FEES = "financial_commission_fees".freeze
  FINANCIAL_SERVICES_PROCEEDS = "financial_services_proceeds".freeze
  INDIVIDUAL_PROPERTY_INVESTMENTS = "individual_property_investments".freeze
  OTHER_INVESTMENTS = "other_investments".freeze
  CORPORATE_PROPERTY_INVESTMENTS = "corporate_property_investments".freeze
  IMMIGRANTS_CAPITAL_PAYMENTS = "immigrants_capital_payments".freeze
  LEGAL_SERVICES = "legal_services".freeze
  ACCOUNTING_SERVICES = "accounting_services".freeze
  CONSULTING_SERVICES = "consulting_services".freeze
  PUBLIC_RELATION_SERVICES = "public_relation_services".freeze
  ADS_AND_MARKET_RESEARCH_SERVICES = "ads_and_market_research_services".freeze
  MANAGERIAL_SERVICES = "managerial_services".freeze
  MEDICAL_AND_DENTAL_SERVICES = "medical_and_dental_services".freeze
  EDUCATIONAL_SERVICES = "educational_services".freeze
  OPERATIONAL_LEASING = "operational_leasing".freeze
  CULTURAL_AND_RECREATIONAL_SERVICES = "cultural_and_recreational_services".freeze
  SALARY_RESIDENT_OUT_COUNTRY = "salary_resident_out_country".freeze
  SALARY_NON_RESIDENT_IN_COUNTRY = "salary_non_resident_in_country".freeze
  SALARY_CONTRACT_WORKER_IN_COUNTRY = "salary_contract_worker_in_country".freeze
  SOCIAL_SECURITY_SCHEMES = "social_security_schemes".freeze
  CHARITIES_AND_RELIGIOUS_BODIES = "charities_and_religious_bodies".freeze
  DONATIONS_AND_AID_TO_GOVERNMENT = "donations_and_aid_to_government".freeze
  DONATIONS_AND_AID_TO_PRIVATE = "donations_and_aid_to_private".freeze
  PENSIONS = "pensions".freeze
  ANNUITIES = "annuities".freeze
  INHERITANCES = "inheritances".freeze
  ALIMONY = "alimony".freeze
  TAX_INCOME = "tax_income".freeze
  TAX_VAT_REFUNDS = "tax_vat_refunds".freeze
  TAX_OTHER = "tax_other".freeze
  NON_LIFE_INSURANCE_PREMIUMS = "non_life_insurance_premiums".freeze
  LIFE_INSURANCE_PREMIUMS = "life_insurance_premiums".freeze
  DIVIDENDS = "dividends".freeze
  BRANCH_PROFITS = "branch_profits".freeze
  COMMISION_OR_BROKERAGE = "commision_or_brokerage".freeze
  RENTAL = "rental".freeze
  INDIVIDUAL_INVESTMENT_INCOME_FROM_ABROAD = "individual_investment_income_from_abroad".freeze
  SHARES_SALE = "shares_sale".freeze
  BONDS_SALE = "bonds_sale".freeze
  MONEY_MARKET_INSTRUMENTS_SALE = "money_market_instruments_sale".freeze
  FUNDS_REPATRIATION_OF_FOREIGN_BANK_ACCOUNT = "funds_repatriation_of_foreign_bank_account".freeze
  MUTUAL_FUNDS_SALE_OR_COLLECTIVE_INVESTMENT = "mutual_funds_sale_or_collective_investment".freeze
  OVERSEAS_PROPERTY_SALE = "overseas_property_sale".freeze
  SALE_AND_REPATRIATION_OF_OTHER_INVESTMENT = "sale_and_repatriation_of_other_investment".freeze
  REPATRIATION_SOUTH_AFRICAN_RESERVE_BANK_INSTRUCTION = "repatriation_south_african_reserve_bank_instruction".freeze
  RESIDENT_LOAN_FROM_NON_RESIDENT_SHARE_HOLDER = "resident_loan_from_non_resident_share_holder".freeze
  RESIDENT_LOAN_FROM_NON_RESIDENT_THIRD_PARTY = "resident_loan_from_non_resident_third_party".freeze
  RESIDENT_LOAN_REPAYMENT_FROM_OVERSEAS_LIVING_SOUTH_AFRICAN = "resident_loan_repayment_from_overseas_living_south_african".freeze
  STUDY_LOAN_REPAYMENT = "study_loan_repayment".freeze
  SHAREHOLDERS_LOAN_REPAYMENT = "shareholders_loan_repayment".freeze
  THIRD_PARTY_LOAN_REPAYMENT = "third_party_loan_repayment".freeze
  TRADE_FINANCE_LOAN_REPAYMENT = "trade_finance_loan_repayment".freeze
  RESEARCH_AND_DEVELOPMENT_PROCEEDS = "research_and_development_proceeds".freeze
  RESEARCH_AND_DEVELOPMENT_FUNDING = "research_and_development_funding".freeze
  MACHINARY_AND_EQUIPMENT_REPAIRS = "machinary_and_equipment_repairs".freeze
  ARCHITECTURAL_ENGINEERING_TECHNICAL_SERVICES = "architectural_engineering_technical_services".freeze
  AGRIGULTURAL_MINING_WASTE_DEPOLLUTION_SERVICES = "agrigultural_mining_waste_depollution_services".freeze
  CONSTRUCTION_SERVICES = "construction_services".freeze
  TELECOMMUNICATION_SERVICES = "telecommunication_services".freeze
  DATA_NEWS_AGENCY_FEES = "data_news_agency_fees".freeze
  ROAD_PASSENGER_SERVICES = "road_passenger_services".freeze
  RAIL_PASSENGER_SERVICES = "rail_passenger_services".freeze
  SEA_PASSENGER_SERVICES = "sea_passenger_services".freeze
  AIR_PASSENGER_SERVICES = "air_passenger_services".freeze
  ROAD_FREIGHT_SERVICES = "road_freight_services".freeze
  RAIL_FREIGHT_SERVICES = "rail_freight_services".freeze
  SEA_FREIGHT_SERVICES = "sea_freight_services".freeze
  AIR_FREIGHT_SERVICES = "air_freight_services".freeze
  ROAD_POSTAL_AND_COURIER_SERVICES = "road_postal_and_courier_services".freeze
  RAIL_POSTAL_AND_COURIER_SERVICES = "rail_postal_and_courier_services".freeze
  SEA_POSTAL_AND_COURIER_SERVICES = "sea_postal_and_courier_services".freeze
  AIR_POSTAL_AND_COURIER_SERVICES = "air_postal_and_courier_services".freeze
  LISTED_SHARES_INVESTMENT = "listed_shares_investment".freeze
  NON_LISTED_SHARES_INVESTMENT = "non_listed_shares_investment".freeze
  MONEY_MARKET_INSTRUMENTS_INVESTMENT = "money_market_instruments_investment".freeze
  LISTED_BONDS_INVESTMENT = "listed_bonds_investment".freeze
  NON_LISTED_BONDS_INVESTMENT = "non_listed_bonds_investment".freeze
  REPRODUCE_DISTRIBUTE_RIGHTS_LICENSE = "reproduce_distribute_rights_license".freeze
  PATENTS_AND_INVESTIONS_RIGHTS_LICENSE = "patents_and_investions_rights_license".freeze
  PATTERNS_AND_DESIGNS_RIGHTS = "patterns_and_designs_rights".freeze
  COPYRIGHTS_RIGHTS = "copyrights_rights".freeze
  FRANCHISES_AND_TRADEMARKS_RIGHTS = "franchises_and_trademarks_rights".freeze
  PATENTS_AND_INVENTIONS_DISPOSAL = "patents_and_inventions_disposal".freeze
  PATTERNS_AND_DESIGNS_DISPOSAL = "patterns_and_designs_disposal".freeze
  COPYRIGHTS_DISPOSAL = "copyrights_disposal".freeze
  FRANCHISES_AND_TRADEMARKS_DISPOSAL = "franchises_and_trademarks_disposal".freeze
  SALES_OF_MANUSCRIPTS_SOUND_RECORDINGS_FILMS = "sales_of_manuscripts_sound_recordings_films".freeze
  FUNDS_RELATED_TO_RECORDING_PRODUCTIONS = "funds_related_to_recording_productions".freeze
  SOFTWARE_OWNERSHIP_RIGHTS_SALE = "software_ownership_rights_sale".freeze
  COMPUTER_SERVICES = "computer_services".freeze
  CUSTOMISED_SOFTWARE_SALES = "customised_software_sales".freeze
  NON_CUSTOMISED_SOFTWARE_ON_PHYSICAL_MEDIA_PERIODIC_LICENCE_SALE = "non_customised_software_on_physical_media_periodic_licence_sale".freeze
  NON_CUSTOMISED_SOFTWARE_ON_PYISICAL_MEDIA_PERPETUAL_USE_SALE = "non_customised_software_on_pyisical_media_perpetual_use_sale".freeze
  NON_CUSTOMISED_SOFTWARE_FOR_DOWNLOADING_ELECTRONICALLY_MADE_PERIODIC_LICENCE_SALE = "non_customised_software_for_downloading_electronically_made_periodic_licence_sale".freeze
  NON_CUSTOMISED_SOFTWARE_FOR_DOWNLOADING_ELECTRONICALLY_MADE_SINGLE_PAYMENT_SALE = "non_customised_software_for_downloading_electronically_made_single_payment_sale".freeze
  FIXED_ASSETS_DONATIONS_TO_SA_GOVERNMENT = "fixed_assets_donations_to_sa_government".freeze
  FIXED_ASSETS_DONATIONS_TO_CORPORATE_ENTITIES = "fixed_assets_donations_to_corporate_entities".freeze
  PROPERTY_DISINVESTMENT_BY_CORPORATE_ENTITY_RESIDENT = "property_disinvestment_by_corporate_entity_resident".freeze
  OTHER_BUSINESS_SERVICES = "other_business_services".freeze
  INSTITUTIONAL_INVESTOR_DISINVESTMENT = "institutional_investor_disinvestment".freeze
  GOVERNMENT_SERVICES = "government_services".freeze

  # Builds the enum from string
  # @param [String] The enum value in the form of the string
  # @return [String] The enum value
  def build_from_hash(value)
    constantValues = PayoutMethodTransferReasonEnum.constants.select { |c| PayoutMethodTransferReasonEnum::const_get(c) == value }
    raise "Invalid ENUM value #{value} for class #PayoutMethodTransferReasonEnum" if constantValues.empty? && !value.empty?
    value
  end
end

end
