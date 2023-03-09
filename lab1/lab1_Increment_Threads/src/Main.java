public class Main {
    public static void main(String[] args) {
        ThreadData[] threadsData = {
                new ThreadData(0, "Thread1", 10 * 1000, 3),
                new ThreadData(1, "Thread2", 20 * 1000, 2),
                new ThreadData(2, "Thread3", 30 * 1000, 1),
                new ThreadData(3, "Thread4", 40 * 1000, 1),
                new ThreadData(4, "Thread5", 50 * 1000, 1),
                new ThreadData(5, "Thread6", 60 * 1000, 1),
                new ThreadData(6, "Thread7", 70 * 1000, 1),
                new ThreadData(7, "Thread8", 80 * 1000, 1),
                new ThreadData(8, "Thread5", 90 * 1000, 1),
                new ThreadData(9, "Thread6", 100 * 1000, 1),
                new ThreadData(10, "Thread7", 110 * 1000, 1),
                new ThreadData(11, "Thread8", 120 * 1000, 1)


        };

        ThreadController controller = new ThreadController(threadsData);
        for (int i = 0; i < threadsData.length; i++) {
            new Thread(new Counter(threadsData[i], controller)).start();
        }
        new Thread(controller).start();
    }
}