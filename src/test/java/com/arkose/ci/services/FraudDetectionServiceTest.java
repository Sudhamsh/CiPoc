package com.arkose.ci.services;

import org.junit.Assert;
import org.junit.Test;

public class FraudDetectionServiceTest {
	
	private FraudDetectionService detectionService = new FraudDetectionService();
	
	@Test
	public void isIpValidTrue() {
		Assert.assertTrue(detectionService.isIpValid("10.0.0.0"));
	}
	
	@Test
	public void isIpValidFalse() {
		Assert.assertFalse(detectionService.isIpValid("127.0.0.1"));
	}

}
