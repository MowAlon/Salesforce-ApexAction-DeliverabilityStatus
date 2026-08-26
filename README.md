# Deliverability Status Apex Action for Flows
This is a simple little solution for determining if the org's Email Deliverability is active (Access level is set to "All email") or not.\
It's useful when you have a flow that sends email and you want to avoid errors when the flow runs in a sandbox with email deactivated.

Note: for silly Saleforce reasons, there must be an input value for this to work properly... but the code running doesn't actually need any input, so the variable is called "Ignore", and you can just leave it empty.
