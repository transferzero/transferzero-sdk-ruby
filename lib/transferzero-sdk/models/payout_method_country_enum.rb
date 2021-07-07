=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
class PayoutMethodCountryEnum
  
  AF = "AF".freeze
  AL = "AL".freeze
  DZ = "DZ".freeze
  AS = "AS".freeze
  AD = "AD".freeze
  AO = "AO".freeze
  AI = "AI".freeze
  AQ = "AQ".freeze
  AG = "AG".freeze
  AR = "AR".freeze
  AM = "AM".freeze
  AW = "AW".freeze
  AU = "AU".freeze
  AT = "AT".freeze
  AZ = "AZ".freeze
  BS = "BS".freeze
  BH = "BH".freeze
  BD = "BD".freeze
  BB = "BB".freeze
  BY = "BY".freeze
  BE = "BE".freeze
  BZ = "BZ".freeze
  BJ = "BJ".freeze
  BM = "BM".freeze
  BT = "BT".freeze
  BO = "BO".freeze
  BA = "BA".freeze
  BW = "BW".freeze
  BV = "BV".freeze
  BR = "BR".freeze
  IO = "IO".freeze
  BN = "BN".freeze
  BG = "BG".freeze
  BF = "BF".freeze
  BI = "BI".freeze
  KH = "KH".freeze
  CM = "CM".freeze
  CA = "CA".freeze
  CV = "CV".freeze
  KY = "KY".freeze
  CF = "CF".freeze
  TD = "TD".freeze
  CL = "CL".freeze
  CN = "CN".freeze
  CX = "CX".freeze
  CC = "CC".freeze
  CO = "CO".freeze
  KM = "KM".freeze
  CG = "CG".freeze
  CD = "CD".freeze
  CK = "CK".freeze
  CR = "CR".freeze
  CI = "CI".freeze
  HR = "HR".freeze
  CU = "CU".freeze
  CY = "CY".freeze
  CZ = "CZ".freeze
  DK = "DK".freeze
  DJ = "DJ".freeze
  DM = "DM".freeze
  DO = "DO".freeze
  TP = "TP".freeze
  EC = "EC".freeze
  EG = "EG".freeze
  SV = "SV".freeze
  GQ = "GQ".freeze
  ER = "ER".freeze
  EE = "EE".freeze
  ET = "ET".freeze
  FK = "FK".freeze
  FO = "FO".freeze
  FJ = "FJ".freeze
  FI = "FI".freeze
  FR = "FR".freeze
  GF = "GF".freeze
  PF = "PF".freeze
  TF = "TF".freeze
  GA = "GA".freeze
  GM = "GM".freeze
  GE = "GE".freeze
  DE = "DE".freeze
  GH = "GH".freeze
  GI = "GI".freeze
  GR = "GR".freeze
  GL = "GL".freeze
  GD = "GD".freeze
  GP = "GP".freeze
  GU = "GU".freeze
  GT = "GT".freeze
  GN = "GN".freeze
  GW = "GW".freeze
  GY = "GY".freeze
  HT = "HT".freeze
  HM = "HM".freeze
  VA = "VA".freeze
  HN = "HN".freeze
  HK = "HK".freeze
  HU = "HU".freeze
  IS = "IS".freeze
  IN = "IN".freeze
  ID = "ID".freeze
  IR = "IR".freeze
  IQ = "IQ".freeze
  IE = "IE".freeze
  IL = "IL".freeze
  IT = "IT".freeze
  JM = "JM".freeze
  JP = "JP".freeze
  JO = "JO".freeze
  KZ = "KZ".freeze
  KE = "KE".freeze
  KI = "KI".freeze
  KP = "KP".freeze
  KR = "KR".freeze
  KV = "KV".freeze
  KW = "KW".freeze
  KG = "KG".freeze
  LA = "LA".freeze
  LV = "LV".freeze
  LB = "LB".freeze
  LS = "LS".freeze
  LR = "LR".freeze
  LY = "LY".freeze
  LI = "LI".freeze
  LT = "LT".freeze
  LU = "LU".freeze
  MO = "MO".freeze
  MK = "MK".freeze
  MG = "MG".freeze
  MW = "MW".freeze
  MY = "MY".freeze
  MV = "MV".freeze
  ML = "ML".freeze
  MT = "MT".freeze
  MH = "MH".freeze
  MQ = "MQ".freeze
  MR = "MR".freeze
  MU = "MU".freeze
  YT = "YT".freeze
  MX = "MX".freeze
  FM = "FM".freeze
  MD = "MD".freeze
  MC = "MC".freeze
  MN = "MN".freeze
  MS = "MS".freeze
  ME = "ME".freeze
  MA = "MA".freeze
  MZ = "MZ".freeze
  MM = "MM".freeze
  NA = "NA".freeze
  NR = "NR".freeze
  NP = "NP".freeze
  NL = "NL".freeze
  AN = "AN".freeze
  NC = "NC".freeze
  NZ = "NZ".freeze
  NI = "NI".freeze
  NE = "NE".freeze
  NG = "NG".freeze
  NU = "NU".freeze
  NF = "NF".freeze
  MP = "MP".freeze
  FALSE = "false".freeze
  OM = "OM".freeze
  PK = "PK".freeze
  PW = "PW".freeze
  PS = "PS".freeze
  PA = "PA".freeze
  PG = "PG".freeze
  PY = "PY".freeze
  PE = "PE".freeze
  PH = "PH".freeze
  PN = "PN".freeze
  PL = "PL".freeze
  PT = "PT".freeze
  PR = "PR".freeze
  QA = "QA".freeze
  RE = "RE".freeze
  RO = "RO".freeze
  RU = "RU".freeze
  RW = "RW".freeze
  SH = "SH".freeze
  KN = "KN".freeze
  LC = "LC".freeze
  PM = "PM".freeze
  VC = "VC".freeze
  WS = "WS".freeze
  SM = "SM".freeze
  ST = "ST".freeze
  SA = "SA".freeze
  SN = "SN".freeze
  RS = "RS".freeze
  SC = "SC".freeze
  SL = "SL".freeze
  SG = "SG".freeze
  SK = "SK".freeze
  SI = "SI".freeze
  SB = "SB".freeze
  SO = "SO".freeze
  ZA = "ZA".freeze
  GS = "GS".freeze
  ES = "ES".freeze
  LK = "LK".freeze
  SD = "SD".freeze
  SR = "SR".freeze
  SJ = "SJ".freeze
  SZ = "SZ".freeze
  SE = "SE".freeze
  CH = "CH".freeze
  SY = "SY".freeze
  TW = "TW".freeze
  TJ = "TJ".freeze
  TZ = "TZ".freeze
  TH = "TH".freeze
  TG = "TG".freeze
  TK = "TK".freeze
  TO = "TO".freeze
  TT = "TT".freeze
  TN = "TN".freeze
  TR = "TR".freeze
  TM = "TM".freeze
  TC = "TC".freeze
  TV = "TV".freeze
  UG = "UG".freeze
  UA = "UA".freeze
  AE = "AE".freeze
  GB = "GB".freeze
  US = "US".freeze
  UM = "UM".freeze
  UY = "UY".freeze
  UZ = "UZ".freeze
  VU = "VU".freeze
  VE = "VE".freeze
  VN = "VN".freeze
  VG = "VG".freeze
  VI = "VI".freeze
  WF = "WF".freeze
  EH = "EH".freeze
  YE = "YE".freeze
  ZM = "ZM".freeze

  # Builds the enum from string
  # @param [String] The enum value in the form of the string
  # @return [String] The enum value
  def build_from_hash(value)
    constantValues = PayoutMethodCountryEnum.constants.select { |c| PayoutMethodCountryEnum::const_get(c) == value }
    raise "Invalid ENUM value #{value} for class #PayoutMethodCountryEnum" if constantValues.empty? && !value.empty?
    value
  end
end

end
