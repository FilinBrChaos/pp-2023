package myPackage;
public class Main {
    public static void main(String[] args) {
        ThreadData[] threadsData = {
                new ThreadData(0, "Thread1", 10 * 1000, 3),
                new ThreadData(1, "Thread2", 12 * 1000, 2),
                new ThreadData(2, "Thread3", 15 * 1000, 1)
        };

        ThreadController controller = new ThreadController(threadsData);
        for (int i = 0; i < threadsData.length; i++) {
            new Thread(new Counter(threadsData[i], controller)).start();
        }
        new Thread(controller).start();
    }
}