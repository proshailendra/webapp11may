﻿CREATE Procedure Usp_GetEmployee
@EmployeeId int
As
Begin
	Select * from Employees where EmployeeID=@EmployeeId
End