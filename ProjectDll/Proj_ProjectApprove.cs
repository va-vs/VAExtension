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
    
    public partial class Proj_ProjectApprove
    {
        public long ApproveID { get; set; }
        public Nullable<long> ProjectID { get; set; }
        public Nullable<long> ApprovedBy { get; set; }
        public Nullable<System.DateTime> ApprovedTime { get; set; }
        public Nullable<int> Result { get; set; }
        public string Comments { get; set; }
        public Nullable<int> Flag { get; set; }
    
        public virtual Proj_Project Proj_Project { get; set; }
    }
}