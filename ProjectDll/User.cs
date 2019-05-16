//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectDll
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.Proj_Project = new HashSet<Proj_Project>();
            this.Proj_ExpertProjects = new HashSet<Proj_ExpertProjects>();
            this.Proj_Match = new HashSet<Proj_Match>();
            this.Proj_Member = new HashSet<Proj_Member>();
        }
    
        public long UserID { get; set; }
        public string Account { get; set; }
        public string Name { get; set; }
        public string IDCard { get; set; }
        public Nullable<bool> Sex { get; set; }
        public string Telephone { get; set; }
        public string Email { get; set; }
        public string Duty { get; set; }
        public string ProfessionalTitle { get; set; }
        public string Department { get; set; }
        public string Major { get; set; }
        public string Class { get; set; }
        public string Grade { get; set; }
        public Nullable<int> RoleID { get; set; }
        public Nullable<int> DegreeID { get; set; }
        public Nullable<int> SchoolID { get; set; }
        public Nullable<long> CreatedBy { get; set; }
        public Nullable<System.DateTime> Created { get; set; }
        public Nullable<long> ModifiedBy { get; set; }
        public Nullable<System.DateTime> Modified { get; set; }
        public Nullable<int> StateID { get; set; }
        public Nullable<long> ApprovedBy { get; set; }
        public Nullable<System.DateTime> Approved { get; set; }
        public Nullable<long> Flag { get; set; }
    
        public virtual School School { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Proj_Project> Proj_Project { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Proj_ExpertProjects> Proj_ExpertProjects { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Proj_Match> Proj_Match { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Proj_Member> Proj_Member { get; set; }
    }
}