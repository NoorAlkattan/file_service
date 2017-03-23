  client_list = [[2,'The MENTOR Network'],
    [3,'NTN'],
    [4,'Rush'],
    [5,'Meritor'],
    [6,'Wackenhut'],
    [7,'BANNER PLAN ADMINISTRATION'],
    [8,'Lovelace Health Plan'],
    [9,'Humana'],
    [10,'Heico'],
    [11,'PrimeWest'],
    [12,'HOLDER BCBSMT'],
    [13,'Banner Plan Administration'],
    [14,'HOLDER FCHP - Takeover'],
    [15,'HOLDER FCHP'],
    [16,'Chartered Health Plan'],
    [17,'Avera Health Plans, Inc.'],
    [18,'Florida Hospital Healthcare System'],
    [19,'Priority Partners'],
    [20,'Employer Health Programs'],
    [21,'HOLDER PARAMOUNT SAAS'],
    [22,'Paramount '],
    [23,'Mount Carmel Health Plan'],
    [24,'BCBS Nebraska Saas'],
    [25,'Columbia United Providers- Takeover'],
    [26,'Columbia United Providers (CUP)'],
    [27,'Community Health Plans of Washington (CHPW)'],
    [28,'Humana Mass Tort'],
    [29,'Hometown Health'],
    [30,'Hometown Health Firefighters'],
    [31,'Fidelis Care'],
    [32,'Fidelis Care (Medicare Members)'],
    [33,'Humana '],
    [34,'Indiana University Health Plans'],
    [35,'Physicians Plus'],
    [36,'Health Choice Arizona'],
    [37,'Essence Healthcare'],
    [38,'The Health Plan of the Upper Ohio Valley'],
    [39,'AmeriHealth Medicaid'],
    [40,'AmeriHealth Medicare'],
    [41,'Avera Saas'],
    [42,'Community First Health Plans'],
    [43,'Meridian Health Plan'],
    [44,'Community Health Options'],
    [45,'SIHO'],
    [46,'WPS Health Plan'],
    [47,'Fallon Part D'],
    [48,'Healthfirst'],
    [49,'Advantage'],
    [50,'KelseyCare'],
    [51,'Health Alliance Plan (HAP)'],
    [52,'ATRIO'],
    [53,'AmeriHealth Caritas Iowa'],
    [54,'Health First Health Plans'],
    [55,'Fallon Direct Billing'],
    [56,'Johns Hopkins HealthCare'],
    [57,'Blue Medicare Advantage'],
    [58,'Blue Advantage HMO'],
    [59,'United Healthcare C&S'],
    [60,'Independent Care Health Plan'],
    [61,'Commonwealth Care Alliance'],
    [62,'Health Care Service Corporation'],
    [63,'MDwise Inc.'],
    [64,'Excellus Health Plan'],
    [65,'BCBS of AZ'],
    [66,'Presbyterian Healthcare Services'],
    [67,'Blue Shield of California'],
    [68,'Health New England'],
    [69,'Mount Carmel Health Plan'],
    [70,'Healthfirst NY'],
    [71,'Fallon'],
    [72,'Central Health Plan of California'],
    [73,'Inter Valley Health Plan'],
    [74,'Independence Blue Cross'],
    [75,'Arkansas Blue Cross Blue Shield'],
    [76,'SummaCare'],
    [77,'Elderplan'],
    [78,'HealthChoice'],
    [79,'Health Alliance Medical Plans'],
    [80,'Martins Point'],
    [81,'Meridian'],
    [82,'Caremore'],
    [83,'Anthem'],
    [84,'Essence'],
    [85,'Harvard Pilgrim Health Care'],
    [86,'Vantage'],
    [87,'SelectHealth'],
    [88,'AmeriHealth'],
    [89,'Unity Gundersen'],
    [90,'UPHP'],
    [91,'Humana'],
    [92,'Pacific Source'],
    [93,'Indiana University Health Plans'],
  [94,'MCS']]


  client_list.each do |client_id,client_name|
    ClientBucket.where(client_id: client_id , bucket_name: (client_id.to_s + '_lp_gb_bucket_' + client_id.to_s)).first_or_create
  end
