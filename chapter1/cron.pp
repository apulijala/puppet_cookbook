cron {"debug" : 
	command =>  "echo Jaya Guru Datta  > /var/log/test.log", 
	hour =>  inline_template('<%=@hostname.sum % 24 %>'),
	minute => '00',
}
