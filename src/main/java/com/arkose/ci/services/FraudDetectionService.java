package com.arkose.ci.services;

public class FraudDetectionService {
	
	//Hard coded IP test
	public boolean isIpValid(String ip) {
		if(ip.equals("127.0.0.1  ")) {
			return false;
		}
		
		return true;
	}

}
