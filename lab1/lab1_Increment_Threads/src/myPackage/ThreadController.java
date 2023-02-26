package myPackage;

import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;

public class ThreadController implements Runnable {
    boolean[] personalThreadStatus;
    ThreadData[] threadData;

    public ThreadController(ThreadData[] threadData) {
        this.threadData = threadData;
        personalThreadStatus = new boolean[threadData.length];
        Arrays.fill(personalThreadStatus, true);
    }

    @Override
    public void run() {
        try {
            Timer timer = new Timer(true);
            int maxDelay = threadData[0].lifeDuration;
            for (int i = 0; i < threadData.length; i++) {
                ThreadData currentThreadData = threadData[i];
                if (maxDelay < currentThreadData.lifeDuration)
                    maxDelay = currentThreadData.lifeDuration;

                timer.schedule(new TimerTask() {
                    @Override
                    public void run() {
                        ThreadData clone = (ThreadData) currentThreadData.clone();
                        personalThreadStatus[clone.id] = false;
                    }
                }, currentThreadData.lifeDuration);
            }
            Thread.sleep(maxDelay + 500);
        } catch (InterruptedException error) {
            error.printStackTrace();
        }
        Arrays.fill(personalThreadStatus, false);
    }

    synchronized public boolean isAlive(int id) {
        return personalThreadStatus[id];
    }
}
