public with sharing class Dependency_A {
    private Dependency_B dependencyB = new Dependency_B();
    private Dependency_C dependencyC = new Dependency_C();

    public Dependency_A() {

    }

    public String whoAreYou() {
        return 'I am Dependency_A and' + dependencyB.whoAreYou('killer') + ' and ' + dependencyC.whoAreYou('fluffy');
    }
}