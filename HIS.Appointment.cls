Class HIS.Appointment Extends %Persistent
{

Property ANo As %String [ Required ];

Property Slot As HIS.Slot;
/// Cardiology|Pediatrics|Orthopedic Surgery|Dermatology|Neurology|Obstetrics & Gynecology|General Surgery|Endocrinology|Pulmonology|Psychiatry|Family Medicine|Gastroenterology|Urology|Rheumatology|Medical Oncology|Anesthesiology|Nephrology|Ophthalmology|Otolaryngology (ENT)|Infectious Disease|Internal Medicine|Diabetology|Emergency Medicine|Hematology|Vascular Surgery|Radiology|Interventional Cardiology|Plastic & Reconstructive Surgery|Pain Management|Geriatric Medicine|Sports Medicine|Reproductive Medicine|Pathology|Nuclear Medicine|Thoracic Surgery|Clinical Psychology|Hepatology|Neonatology|Colorectal Surgery|Allergy & Immunology|Sleep Medicine|Physical & Rehabilitation Medicine|Hand & Microsurgery|Preventive Medicine|Critical Care Medicine|Aesthetic Medicine|Travel Medicine|Breast Surgery|Spine Surgery|Palliative Care

Property Specialty As %String;

Property Patient As HIS.Patient;

/// status: booked | cancelled | noshow | fulfilled
Property Status As %String;

/// ROUTINE | WALKIN | CHECKUP | FOLLOWUP | EMERGENCY
Property Type As %String;

/// Gereral | Expert | Pharmacy ...
Property ServiceType As %String;

Index ANoIdx On ANo [ Unique ];

Storage Default
{
<Data name="AppointmentDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ANo</Value>
</Value>
<Value name="3">
<Value>Slot</Value>
</Value>
<Value name="4">
<Value>Patient</Value>
</Value>
<Value name="5">
<Value>Status</Value>
</Value>
<Value name="6">
<Value>Specialty</Value>
</Value>
<Value name="7">
<Value>Type</Value>
</Value>
<Value name="8">
<Value>ServiceType</Value>
</Value>
</Data>
<DataLocation>^HIS.AppointmentD</DataLocation>
<DefaultData>AppointmentDefaultData</DefaultData>
<IdLocation>^HIS.AppointmentD</IdLocation>
<IndexLocation>^HIS.AppointmentI</IndexLocation>
<StreamLocation>^HIS.AppointmentS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
