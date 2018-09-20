USE DatabaseRowCounts
Select * from RowCounts where EnterpriseID = 'professionalfin' 





INSERT INTO RowCounts (EnterpriseID, Table_Plural_Name, [RowCount])
SELECT EnterpriseID, Table_Plural_Name, [RowCount]
from professionalfin as NewClient
WHERE 
	NOT Exists (Select * from RowCounts as RC Where RC.EnterpriseID = NewClient.EnterpriseID
				 AND RC.Table_Plural_Name = NewClient.Table_Plural_Name AND RC.[RowCount] = NewClient.[RowCount])

				