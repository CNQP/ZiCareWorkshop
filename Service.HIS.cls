/// 用例：
/// 用例1: 使用Python调用Embedding model，将Specialty 向量化，并保存到向量表
/// 用例2: 使用Query返回JSON格式的Available Slots列表
/// 用例3: 
Class Service.HIS Extends %RegisteredObject
{

/// No need here, should be part of SOAP /REST service classes
Query ListAvailableSlot(pSpecilty, pTimeRange, pDoctor) As %SQLQuery
{
    SELECT * 
      FROM HIS.Slot
}

ClassMethod MakeAppointment() As %Status
{
    Quit $$$OK
}

ClassMethod OutPatientRegistry() As %Status
{
}

Query SuggestDoctorBySymptom() As %SQLQuery
{
    SELECT JSON_ARRAYAGG(JSON_OBJECT('DoctorNo':DNo,'Department':Department,'Name':LastName||' '||FirstName,'AreaOfFocus':Introduction))
      FROM (
            SELECT TOP 2 *   
              FROM HIS.Doctor   
          ORDER BY VECTOR_DOT_PRODUCT(IntroEmbedding, EMBEDDING('unstable blood sugar', 'OpenAI')) DESC
           )
}

ClassMethod Test()
{
    &SQL(Insert into HIS.Doctor(DNO,FirstName,LastName,Introduction) 
    Values('102',
    'Olivia',
    'Chen',
    'Diabetes management, Thyroid disorders, Hormonal imbalances, Osteoporosis, Metabolic syndrome, Insulin therapy, Pituitary disorders, Adrenal disorders, Obesity management, Endocrine testing')
)
}

}
