  function check()
        {
            
            //  var desc=document.getElementById('{!$Component.js.pb.pbs.Descriptions}').value;
           
            var Manager=document.querySelector("[id^='Manager']").value;
       
             var nop=document.getElementById('{!$Component.NumberofPositions}').value;
              
             var ExpiresOn=document.getElementById('{!$Component.ExpiresOn}').value;
          
             var SO=document.getElementById('{!$Component.SalaryOffered}').value;
              
             var JobType=document.getElementById('{!$Component.JobType}').value;
            
             var RS=document.getElementById('{!$Component.RequiredSkills}').value;
           
             var QR=document.getElementById('{!$Component.QualificationRequired}').value;
            
             var CR=document.getElementById('{!$Component.CertificationRequired}').value;
             
             var Active=document.getElementById('{!$Component.Active}').checked;
            
            if(Manager=="" ||nop=="" || ExpiresOn=="" || SO=="" || JobType=="" || RS=="" || QR=="" || CR=="" ||Active=="false")
                {
                    document.getElementById('{!$Component.Btn}').disabled = true;
                    // alert('You Can Not Create Record');
                }
            else
                {
                    document.getElementById('{!$Component.Btn}').disabled = false;
                }
           
        }
            