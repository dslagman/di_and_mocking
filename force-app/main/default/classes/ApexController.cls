public with sharing class ApexController {
    public ApexController() {

    }

    @AuraEnabled
    public static string giveMeYourName(){
        try {
            return new Dependency_A().whoAreYou();
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}