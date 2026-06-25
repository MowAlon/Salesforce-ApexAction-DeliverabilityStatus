global class GetEmailDeliverabilityStatus {

    global class Inputs {
        @InvocableVariable (label = 'Ignore' description = 'Ignore this - it\'s only here to make sure the action works properly.' defaultValue = 'true')
        global Boolean ignored;
    }

    @InvocableMethod(label       = 'Email Deliverability Status'
                     category    = 'Utilities'
                     iconName    = 'slds:standard:email'
                     description = 'Enables decision making based on the org\'s Email Delivery status (useful to avoid errors in sandboxes)')
    global static Boolean[] email_is_on(Inputs[] all_inputs) {
        Boolean[] results = new Boolean[]{};

        Boolean status = email_is_on();
        for (Inputs inputs : all_inputs){results.add(status);}

        return results;
    }

    public static Boolean email_is_on() {
        // A hack to determine if Email Deliverability is active in the current org.
        try {
            Messaging.reserveSingleEmailCapacity(1);
            Messaging.reserveMassEmailCapacity(1);
        } catch (System.NoAccessException error) {return false;}

        return true;
    }

}