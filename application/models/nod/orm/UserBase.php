<?php
//Generated by buildORM from the cred:Users

	namespace nod\orm; //so this file should live under models/nod/orm

	class UserBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'Users';
 

        //autogenerated this function... 
        public function Address_from_created_by_bunch()
        {
                return $this->has_many('Address',created_by_Address_id);
               // return $this->has_one('Address',created_by_Address_id);
        }


        //autogenerated this function... 
        public function Address_from_modified_by_bunch()
        {
                return $this->has_many('Address',modified_by_Address_id);
               // return $this->has_one('Address',modified_by_Address_id);
        }


        //autogenerated this function... 
        public function Board_from_created_by_bunch()
        {
                return $this->has_many('Board',created_by_Board_id);
               // return $this->has_one('Board',created_by_Board_id);
        }


        //autogenerated this function... 
        public function Board_from_modified_by_bunch()
        {
                return $this->has_many('Board',modified_by_Board_id);
               // return $this->has_one('Board',modified_by_Board_id);
        }


        //autogenerated this function... 
        public function Carrier_from_created_by_bunch()
        {
                return $this->has_many('Carrier',created_by_Carrier_id);
               // return $this->has_one('Carrier',created_by_Carrier_id);
        }


        //autogenerated this function... 
        public function Carrier_from_modified_by_bunch()
        {
                return $this->has_many('Carrier',modified_by_Carrier_id);
               // return $this->has_one('Carrier',modified_by_Carrier_id);
        }


        //autogenerated this function... 
        public function County_from_created_by_bunch()
        {
                return $this->has_many('County',created_by_County_id);
               // return $this->has_one('County',created_by_County_id);
        }


        //autogenerated this function... 
        public function County_from_modified_by_bunch()
        {
                return $this->has_many('County',modified_by_County_id);
               // return $this->has_one('County',modified_by_County_id);
        }


        //autogenerated this function... 
        public function CredentialOrganization_from_created_by_bunch()
        {
                return $this->has_many('CredentialOrganization',created_by_CredentialOrganization_id);
               // return $this->has_one('CredentialOrganization',created_by_CredentialOrganization_id);
        }


        //autogenerated this function... 
        public function CredentialOrganization_from_modified_by_bunch()
        {
                return $this->has_many('CredentialOrganization',modified_by_CredentialOrganization_id);
               // return $this->has_one('CredentialOrganization',modified_by_CredentialOrganization_id);
        }


        //autogenerated this function... 
        public function DocumentType_from_created_by_bunch()
        {
                return $this->has_many('DocumentType',created_by_DocumentType_id);
               // return $this->has_one('DocumentType',created_by_DocumentType_id);
        }


        //autogenerated this function... 
        public function DocumentType_from_modified_by_bunch()
        {
                return $this->has_many('DocumentType',modified_by_DocumentType_id);
               // return $this->has_one('DocumentType',modified_by_DocumentType_id);
        }


        //autogenerated this function... 
        public function Document_from_created_by_bunch()
        {
                return $this->has_many('Document',created_by_Document_id);
               // return $this->has_one('Document',created_by_Document_id);
        }


        //autogenerated this function... 
        public function Document_from_modified_by_bunch()
        {
                return $this->has_many('Document',modified_by_Document_id);
               // return $this->has_one('Document',modified_by_Document_id);
        }


        //autogenerated this function... 
        public function EducationInstitution_from_created_by_bunch()
        {
                return $this->has_many('EducationInstitution',created_by_EducationInstitution_id);
               // return $this->has_one('EducationInstitution',created_by_EducationInstitution_id);
        }


        //autogenerated this function... 
        public function EducationInstitution_from_modified_by_bunch()
        {
                return $this->has_many('EducationInstitution',modified_by_EducationInstitution_id);
               // return $this->has_one('EducationInstitution',modified_by_EducationInstitution_id);
        }


        //autogenerated this function... 
        public function Gender_from_created_by_bunch()
        {
                return $this->has_many('Gender',created_by_Gender_id);
               // return $this->has_one('Gender',created_by_Gender_id);
        }


        //autogenerated this function... 
        public function Gender_from_modified_by_bunch()
        {
                return $this->has_many('Gender',modified_by_Gender_id);
               // return $this->has_one('Gender',modified_by_Gender_id);
        }


        //autogenerated this function... 
        public function Network_from_created_by_bunch()
        {
                return $this->has_many('Network',created_by_Network_id);
               // return $this->has_one('Network',created_by_Network_id);
        }


        //autogenerated this function... 
        public function Network_from_modified_by_bunch()
        {
                return $this->has_many('Network',modified_by_Network_id);
               // return $this->has_one('Network',modified_by_Network_id);
        }


        //autogenerated this function... 
        public function Note_bunch()
        {
                return $this->has_many('Note',User_id);
               // return $this->has_one('Note',User_id);
        }


        //autogenerated this function... 
        public function Phone_from_created_by_bunch()
        {
                return $this->has_many('Phone',created_by_Phone_id);
               // return $this->has_one('Phone',created_by_Phone_id);
        }


        //autogenerated this function... 
        public function Phone_from_modified_by_bunch()
        {
                return $this->has_many('Phone',modified_by_Phone_id);
               // return $this->has_one('Phone',modified_by_Phone_id);
        }


        //autogenerated this function... 
        public function ProviderCarrier_from_created_by_bunch()
        {
                return $this->has_many('ProviderCarrier',created_by_ProviderCarrier_id);
               // return $this->has_one('ProviderCarrier',created_by_ProviderCarrier_id);
        }


        //autogenerated this function... 
        public function ProviderCarrier_from_modified_by_bunch()
        {
                return $this->has_many('ProviderCarrier',modified_by_ProviderCarrier_id);
               // return $this->has_one('ProviderCarrier',modified_by_ProviderCarrier_id);
        }


        //autogenerated this function... 
        public function ProviderCoverage_from_created_by_bunch()
        {
                return $this->has_many('ProviderCoverage',created_by_ProviderCoverage_id);
               // return $this->has_one('ProviderCoverage',created_by_ProviderCoverage_id);
        }


        //autogenerated this function... 
        public function ProviderCoverage_from_modified_by_bunch()
        {
                return $this->has_many('ProviderCoverage',modified_by_ProviderCoverage_id);
               // return $this->has_one('ProviderCoverage',modified_by_ProviderCoverage_id);
        }


        //autogenerated this function... 
        public function ProviderCredential_from_created_by_bunch()
        {
                return $this->has_many('ProviderCredential',created_by_ProviderCredential_id);
               // return $this->has_one('ProviderCredential',created_by_ProviderCredential_id);
        }


        //autogenerated this function... 
        public function ProviderCredential_from_modified_by_bunch()
        {
                return $this->has_many('ProviderCredential',modified_by_ProviderCredential_id);
               // return $this->has_one('ProviderCredential',modified_by_ProviderCredential_id);
        }


        //autogenerated this function... 
        public function ProviderEducation_from_created_by_bunch()
        {
                return $this->has_many('ProviderEducation',created_by_ProviderEducation_id);
               // return $this->has_one('ProviderEducation',created_by_ProviderEducation_id);
        }


        //autogenerated this function... 
        public function ProviderEducation_from_modified_by_bunch()
        {
                return $this->has_many('ProviderEducation',modified_by_ProviderEducation_id);
               // return $this->has_one('ProviderEducation',modified_by_ProviderEducation_id);
        }


        //autogenerated this function... 
        public function ProviderHospital_from_created_by_bunch()
        {
                return $this->has_many('ProviderHospital',created_by_ProviderHospital_id);
               // return $this->has_one('ProviderHospital',created_by_ProviderHospital_id);
        }


        //autogenerated this function... 
        public function ProviderHospital_from_modified_by_bunch()
        {
                return $this->has_many('ProviderHospital',modified_by_ProviderHospital_id);
               // return $this->has_one('ProviderHospital',modified_by_ProviderHospital_id);
        }


        //autogenerated this function... 
        public function ProviderLicense_from_created_by_bunch()
        {
                return $this->has_many('ProviderLicense',created_by_ProviderLicense_id);
               // return $this->has_one('ProviderLicense',created_by_ProviderLicense_id);
        }


        //autogenerated this function... 
        public function ProviderLicense_from_modified_by_bunch()
        {
                return $this->has_many('ProviderLicense',modified_by_ProviderLicense_id);
               // return $this->has_one('ProviderLicense',modified_by_ProviderLicense_id);
        }


        //autogenerated this function... 
        public function ProviderNetwork_from_created_by_bunch()
        {
                return $this->has_many('ProviderNetwork',created_by_ProviderNetwork_id);
               // return $this->has_one('ProviderNetwork',created_by_ProviderNetwork_id);
        }


        //autogenerated this function... 
        public function ProviderNetwork_from_modified_by_bunch()
        {
                return $this->has_many('ProviderNetwork',modified_by_ProviderNetwork_id);
               // return $this->has_one('ProviderNetwork',modified_by_ProviderNetwork_id);
        }


        //autogenerated this function... 
        public function ProviderReference_from_created_by_bunch()
        {
                return $this->has_many('ProviderReference',created_by_ProviderReference_id);
               // return $this->has_one('ProviderReference',created_by_ProviderReference_id);
        }


        //autogenerated this function... 
        public function ProviderReference_from_modified_by_bunch()
        {
                return $this->has_many('ProviderReference',modified_by_ProviderReference_id);
               // return $this->has_one('ProviderReference',modified_by_ProviderReference_id);
        }


        //autogenerated this function... 
        public function ProviderSpeciality_from_created_by_bunch()
        {
                return $this->has_many('ProviderSpeciality',created_by_ProviderSpeciality_id);
               // return $this->has_one('ProviderSpeciality',created_by_ProviderSpeciality_id);
        }


        //autogenerated this function... 
        public function ProviderSpeciality_from_modified_by_bunch()
        {
                return $this->has_many('ProviderSpeciality',modified_by_ProviderSpeciality_id);
               // return $this->has_one('ProviderSpeciality',modified_by_ProviderSpeciality_id);
        }


        //autogenerated this function... 
        public function ProviderStatus_from_created_by_bunch()
        {
                return $this->has_many('ProviderStatus',created_by_ProviderStatus_id);
               // return $this->has_one('ProviderStatus',created_by_ProviderStatus_id);
        }


        //autogenerated this function... 
        public function ProviderStatus_from_modified_by_bunch()
        {
                return $this->has_many('ProviderStatus',modified_by_ProviderStatus_id);
               // return $this->has_one('ProviderStatus',modified_by_ProviderStatus_id);
        }


        //autogenerated this function... 
        public function Provider_from_created_by_bunch()
        {
                return $this->has_many('Provider',created_by_Provider_id);
               // return $this->has_one('Provider',created_by_Provider_id);
        }


        //autogenerated this function... 
        public function Provider_from_modified_by_bunch()
        {
                return $this->has_many('Provider',modified_by_Provider_id);
               // return $this->has_one('Provider',modified_by_Provider_id);
        }


        //autogenerated this function... 
        public function Speciality_from_created_by_bunch()
        {
                return $this->has_many('Speciality',created_by_Speciality_id);
               // return $this->has_one('Speciality',created_by_Speciality_id);
        }


        //autogenerated this function... 
        public function Speciality_from_modified_by_bunch()
        {
                return $this->has_many('Speciality',modified_by_Speciality_id);
               // return $this->has_one('Speciality',modified_by_Speciality_id);
        }


        //autogenerated this function... 
        public function TagLink_bunch()
        {
                return $this->has_many('TagLink',User_id);
               // return $this->has_one('TagLink',User_id);
        }


	}//the end of class User		
?>