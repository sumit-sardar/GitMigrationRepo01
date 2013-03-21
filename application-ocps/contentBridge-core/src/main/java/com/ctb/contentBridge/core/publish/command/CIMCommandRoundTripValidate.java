package com.ctb.contentBridge.core.publish.command;

public class CIMCommandRoundTripValidate extends AbstractCIMCommandRoundTrip {

	public CIMCommandRoundTripValidate(

		String sourceEnv,
		String targetEnv,
		String frameworkCode) {
		super(sourceEnv, targetEnv, frameworkCode);
	}

	public String getCommandName() {
		return ROUNDTRIP_VALIDATE;
	}
}
