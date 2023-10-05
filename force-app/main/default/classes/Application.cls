public with sharing class Application {
    public static IServiceFactory serviceFactory = (IServiceFactory) Type.forName('ServiceFactory').newInstance();
}