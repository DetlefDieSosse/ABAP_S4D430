@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee (Consumption)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #D,
    sizeCategory:   #M,
    dataClass:      #MASTER
}
define view entity Z36_C_EMPLOYEE_QRY
  as select from /LRN/R_Employee_Rel
  {
    key EmployeeId,
        FirstName,
        LastName,
        DepartmentId,

        _Department.Description         as DepartmentDescription,
        _Department._Assistant.LastName as AssistantName,

        /* Associations */
        _Department

  }
