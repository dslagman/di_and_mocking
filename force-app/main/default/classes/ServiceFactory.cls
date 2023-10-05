public class ServiceFactory implements IServiceFactory {
    private Map<Type, String> mServices = new Map<Type, String> {
        IService.class => 'Service1'
    };

    public Object newInstanceFor(Type interfaceType) {
        Type implementationType = getImplementationTypeName(interfaceType);
        if (implementationType == null) {
            throw new InvalidARgumentException('No implementation for ' + interfaceType.getName());
        }

        return implementationType.newInstance();
    }

    private Type getImplementationTypeName(Type interfaceType) {
        if (interfaceType.getName() == 'IService' && this.discountType() == 'Stacked') {
            return Type.forName('Service2');
        }

        return Type.forName(mServices.get(interfaceType));
    }

    private String discountType() {
        if (DateTime.now().day() == 5) {
            return 'Stacked';
        } else {
            return 'Combined';
        }
    }

    public class InvalidARgumentException extends Exception {

    }
}