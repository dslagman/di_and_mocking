@IsTest
private class ApexControllerTest {
    @IsTest
    private static void itShouldReturnItsName(){
        fflib_ApexMocks mocks = new fflib_ApexMocks();

        IServiceFactory factory = (IServiceFactory) mocks.mock(IServiceFactory.class);
        Application.serviceFactory = factory;

        IService service = (IService) mocks.mock(IService.class);
        mocks.startStubbing();
        mocks.when(Application.serviceFactory.newInstanceFor(IService.class))
            .thenReturn(service);
        mocks.when(service.whoAreYou())
            .thenReturn('MockedService');
        mocks.stopStubbing();

        String returnedName = ApexController.giveMeYourName();

        Assert.areEqual('Service2', returnedName);
    }
}