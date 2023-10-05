@IsTest
private class ApexControllerTest {
    @IsTest
    private static void itShouldReturnItsName(){
        String returnedName = ApexController.giveMeYourName();

        Assert.isTrue(returnedName.contains('killer'));
        Assert.isTrue(returnedName.contains('fluffy'));
    }
}