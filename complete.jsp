<html>
  <head>
    <meta charset = "utf-8">
  </head>
  

  <body>
   
    <div style ="text-align:center;border-bottom:1px solid;"><h1 >Your Resume</h1></div>
  
  	  <% 
        String[] tmp_edu = request.getParameterValues("edu"); 
  		String[] tmp_exp = request.getParameterValues("exp");	
  		String[] tmp_oth = request.getParameterValues("oth");	
  		String[] tmp_f = request.getParameterValues("field");
  		String[] tmp_d = request.getParameterValues("detail");
  		String edu_f = "";
  		String exp_f = "";
  		String oth_f = "";
  		String skills = "";
  		int i = 0;
  		int len = 0;
  		
  		if (tmp_edu != null){ 
  			for(i = 0;i < tmp_edu.length;i++)
  				if(i%3 == 0){
  					edu_f += "School : ";
  					edu_f += tmp_edu[i] + "\r\n";
  				}
  				
  				else if(i%3 == 1){
  					edu_f += "major : ";
  					edu_f += tmp_edu[i] + "\r\n";
  				}
  			
  				else{
  					edu_f += "duration : ";
  					edu_f += tmp_edu[i] + "\r\n\r\n";
  				}
  			}
  		
  		if (tmp_exp != null){ 
  			for(i = 0;i < tmp_exp.length;i++) 
  				if(i%3 == 0){
  					exp_f += "Organization : ";
  					exp_f += tmp_exp[i] + "\r\n";
  				}
  				
  				else if(i%3 == 1){
  					exp_f += "duties : ";
  					exp_f += tmp_exp[i] + "\r\n";
  				}
  			
  				else{
  					exp_f += "duration : ";
  					exp_f += tmp_exp[i] + "\r\n\r\n";
  				}
  			}
  		
  		if (tmp_oth != null){ 
  			for(i = 0;i < tmp_oth.length;i++) 
  				oth_f += tmp_oth[i] + "\r\n"; 
  			}
  		
  		if (tmp_f != null || tmp_d != null){
  			if(tmp_f.length < tmp_d.length)
  				len = tmp_d.length;
  			else
  				len = tmp_f.length;
  			
  			for(i = 0;i < len;i++){
  				skills += "Field : ";
  				skills += tmp_f[i] + "\r\n";
  				skills += "Details : ";
  				skills += tmp_d[i] + "\r\n\r\n";
  			}
  			
  		}
  		
  		
  		edu_f = edu_f.replace("\r\n","<br>");
  		exp_f = exp_f.replace("\r\n","<br>");
  		oth_f = oth_f.replace("\r\n","<br>");
  		skills = skills.replace("\r\n","<br>");
  		
  		
      %>
     
  	  
      <ul>
        <li><h2><strong><%= request.getParameter("f_name") %> <%= request.getParameter("l_name") %></strong></h2>
        <img src = image align = "right"/> </li>
        <li><b><i>Contact information : </i></b> <br>
        > Cell No : <%= request.getParameter("phone") %> <br>
        > e-mail : <%= request.getParameter("e-mail") %> <br><br>
        </li>
        
        <li><div style ="border-bottom:1px solid;">
        <b>Career Goal</b> : <br><%= request.getParameter("goal") %><br><br></div></li>
        <br><br><br>
        <li><div style ="border-bottom:2px solid;">
        <b>Education</b></div>  <br>  <%= edu_f  %></li>
        <li><div style ="border-bottom:2px solid;">
        <b>Experience</b></div>  <br>  <%= exp_f  %></li>
        <li><div style ="border-bottom:2px solid;">
        <b>Skills</b></div>  <br>  <%=skills   %></li>
        <li><div style ="border-bottom:2px solid;">
        <b>Others</b></div>  <br>  <%= oth_f  %></li>
      </ul>
     
      
  </body>
</html>
