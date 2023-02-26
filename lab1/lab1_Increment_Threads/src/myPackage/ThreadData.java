package myPackage;

public class ThreadData implements Cloneable {
    int id;
    String name;
    int lifeDuration;
    int step;

    public ThreadData(int id, String name, int lifeDuration, int step) {
        this.id = id;
        this.name = name;
        this.lifeDuration = lifeDuration;
        this.step = step;
    }

    @Override
    public Object clone() {
        return new ThreadData(id, name, lifeDuration, step);
    }
}
