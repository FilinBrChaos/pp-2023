import static java.lang.System.*;

public class Counter implements Runnable {
    ThreadData threadData;
    ThreadController controller;

    public Counter(ThreadData data, ThreadController controller) {
        this.threadData = data;
        this.controller = controller;
    }

    @Override
    public void run() {
        out.println("Counter '" + threadData.name + "' have started successfully");
        long sum = 0;
        int steps = 0;
        while (controller.isAlive(threadData.id)) {
            sum += threadData.step;
            steps++;
        }
        out.println("Counter '" + threadData.name + "': result = " + sum + "; steps = " + steps + ";");
    }
}
