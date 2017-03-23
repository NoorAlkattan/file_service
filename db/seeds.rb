client_list=[ 'The MENTOR Network','NTN','Rush','Meritor','Wackenhut','BANNER PLAN ADMINISTRATION','Lovelace Health Plan','Humana','Heico','PrimeWest',
'HOLDER BCBSMT','Banner Plan Administration','HOLDER FCHP - Takeover','HOLDER FCHP','Chartered Health Plan','Avera Health Plans, Inc.','Florida Hospital Healthcare System',
'Priority Partners','Employer Health Programs','HOLDER PARAMOUNT SAAS','Paramount','Mount Carmel Health Plan','BCBS Nebraska Saas','Columbia United Providers- Takeover',
'Columbia United Providers (CUP)','Community Health Plans of Washington (CHPW)','Humana Mass Tort','Hometown Health','Hometown Health Firefighters','Fidelis Care',
'Fidelis Care (Medicare Members)','Humana','Indiana University Health Plans','Physicians Plus','Health Choice Arizona','Essence Healthcare',
'The Health Plan of the Upper Ohio Valley','AmeriHealth Medicaid','AmeriHealth Medicare','Avera Saas','Community First Health Plans','Meridian Health Plan',
'Community Health Options','SIHO','WPS Health Plan','Fallon Part D','Healthfirst','Advantage','KelseyCare','Health Alliance Plan (HAP)','ATRIO','AmeriHealth Caritas Iowa',
'Health First Health Plans','Fallon Direct Billing','Johns Hopkins HealthCare','Blue Medicare Advantage','Blue Advantage HMO','United Healthcare C&S','Independent Care Health Plan',
'Commonwealth Care Alliance','Health Care Service Corporation','MDwise Inc.','Excellus Health Plan','BCBS of AZ','Presbyterian Healthcare Services','Blue Shield of California',
'Health New England','Mount Carmel Health Plan','Healthfirst NY','Fallon','Central Health Plan of California','Inter Valley Health Plan','Independence Blue Cross','Arkansas Blue Cross Blue Shield',
'SummaCare','Elderplan','HealthChoice','Health Alliance Medical Plans','Martins Point','Meridian','Caremore','Anthem','Essence','Harvard Pilgrim Health Care','Vantage','SelectHealth',
'AmeriHealth','Unity Gundersen','UPHP','Humana','Pacific Source','Indiana University Health Plans','MCS']


client_list.each do |name|
  ClientBucket.create(client_name: name)
end
