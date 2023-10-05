public with sharing class ApexController {
    public IService service;

    public ApexController() {
        this.service = (IService) Application.serviceFactory.newInstanceFor(IService.class);
    }

    @AuraEnabled
    public static string giveMeYourName(){
        // try {
            return new ApexController().whoAreYou();
        // } catch (Exception e) {
        //     throw new AuraHandledException(e.getMessage());
        // }
    }

    public string whoAreYou(){
        return this.service.whoAreYou();
    }
}