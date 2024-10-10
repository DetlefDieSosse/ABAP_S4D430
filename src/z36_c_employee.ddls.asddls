//@AbapCatalog.dataMaintenance: #RESTRICTED
//@AbapCatalog.viewEnhancementCategory: [#NONE]
@AbapCatalog: {
    dataMaintenance: #RESTRICTED,
    viewEnhancementCategory: [#NONE]
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee (Entity)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #D,
    sizeCategory:   #M,
    dataClass:      #MASTER
}
define view entity Z36_C_EMPLOYEE
  as select from Z36_R_EMPLOYEE_ANN
{
  key EmployeeId,
      FirstName,
      LastName,
      BirthDate,
      EntryDate,
      DepartmentId,
      @Semantics.amount.currencyCode: 'currencycode'
      AnnualSalary,
      CurrencyCode,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
