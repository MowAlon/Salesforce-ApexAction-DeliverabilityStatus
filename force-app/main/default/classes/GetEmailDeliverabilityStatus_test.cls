@isTest (testFor='ApexClass:GetEmailDeliverabilityStatus')
public class GetEmailDeliverabilityStatus_test {

    @isTest static void test_email_is_on() {
        GetEmailDeliverabilityStatus.Inputs[] all_inputs = new GetEmailDeliverabilityStatus.Inputs[]{};
            
        for (Integer i = 0; i < 5; i++) {
            all_inputs.add(new GetEmailDeliverabilityStatus.Inputs());
        }
        
        Boolean deliverability_status = GetEmailDeliverabilityStatus.email_is_on();
        
        Boolean[] results = GetEmailDeliverabilityStatus.email_is_on(all_inputs);

        for (Boolean result : results) {
        	Assert.areEqual(deliverability_status, result);
        }
    }
}