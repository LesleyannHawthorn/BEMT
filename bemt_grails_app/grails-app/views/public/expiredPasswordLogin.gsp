<html>
	<head>
		<meta name="layout" content="../layouts/public"/>
		<title>Login</title>
	</head>
	<body>
		<br/>
		<div class="row">
			<div class="small-12 columns">
				<h3><i class="fa fa-bar-chart-o"></i> Biobank Economic Modeling Tool</h3>
			</div>			
		</div>
    <div class="row">
     	<div class="small-8 columns">
				<g:render template="../components/flashmessage" model="[flash: flash]"/>
				
			</div>
		</div>			
		<br/>
		<browser:choice>
			<browser:isMsie versionLower="9">
				<div class="staticmessage error">
	  			<p>
<%-- The BEMT requires the use of Firefox, Chrome, Safari, or Internet Explorer 9 or higher.  If you are not using one of these browsers, please try a different browser.   If you are getting this message and using Internet Explorer 9 or higher, it is possible your browser’s compatibility settings are restricting access to the BEMT site.  Please check with your system administrator about correcting this. --%>
The BEMT requires the use of Firefox, Chrome, or Safari. If you are not using one of these browsers, please try a different browser. 
                                </p>
				</div>
			</browser:isMsie>
			<browser:otherwise>
  			<browser:isMsie>
					<div class="row">
						<div class="small-12 columns">
							<div class="staticmessage error">
				  			<p>You are currently using Internet Explorer (IE).  Certain configurations of IE may cause issues while performing certain functions on this site.  We recommend using Firefox, Chrome or Safari if possible.  Thank you.</p>
							</div>
						</div>
					</div>
				</browser:isMsie>
				<div class="row">
					<div class="small-3 columns">&#160;</div>
					<div class="small-5 columns end">
						<h3>Password Reset</h3>
						
						<g:form controller="public" action="changeExpiredPw">
                                                   
                                             
							<fieldset>
								<legend>Change Password</legend>
                                                                
							
								<p>Provide your email address and set up a new password</p>
								<label>Email Address</label>
								<input id="email"  name="email" type="text" placeholder="Email address…" value="${obj?.email}">
								<label>New Password</label>
								<input id="password" name="password" type="password" placeholder="Your password…" autocomplete="off">
								<label>Confirm Password</label>
								<input id="password_check" name="password_check" type="password" placeholder="Confirm password…" autocomplete="off">
								<p style="margin-bottom:2px;"><i class="fa fa-question-circle"></i> Password must be least 8 characters in length and contain three of the following:</p>
                                                                <ul>
                                                                    <li>uppercase character</li>
								    <li>lowercase character</li>
								    <li>numeric character</li>
								    <li>special character (e.g. !@#$%/)</li>
								</ul>
									
								<button type="submit" class="button bemtbutton radius">Update Password</button>
								
								
							</fieldset>
						</g:form>		
					</div>
				</div>
		    <div class="row">
		     	<div class="small-8 small-offset-2 columns">
		     		<p style="font-size:0.85em;line-height:1.2em">
							<b><i class="fa fa-info-circle"></i> Privacy Notice:</b> Thank you for using the Biobank Economic Modeling Tool (BEMT) provided by the National Cancer Institute's Biorepository and Biospecimen Research Branch (BBRB). Using the BEMT involves recording information about your biobank. This information may or may not be considered sensitive information by you. The BBRB will not use or access this information except for the following: a) User specific information as part of system maintenance or end user support; b) Usage information such as commonly used features to assist in improving the BEMT.
						</p>
					</div>
				</div>				
			</browser:otherwise>
		</browser:choice>
	</body>
</html>