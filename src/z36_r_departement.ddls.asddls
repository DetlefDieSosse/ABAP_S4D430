@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'department'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity Z36_R_DEPARTEMENT
  as select from /lrn/depment_rel
association [0..*] to Z36_Employee as _Employee
on $projection.Id = _Employee.departmentid
association [0..1] to Z36_Employee as _Head
on $projection.HeadId = _Head.EmployeeId
association [1..1] to Z36_Employee as _Assistant
on $projection.AssistantId = _Assistant.EmployeeId
{
  key id                    as Id,
      description           as Description,
      head_id               as HeadId,
      assistant_id          as AssistantId,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Employee,
      _Head,
      _Assistant
}
