package day01;

public class synchronized_01 implements Runnable{

	static synchronized_01 instance = new synchronized_01();
	
	static int j=0;
//	public synchronized void increase(){  //锁是基于类的
//		j++;
//	}
	
	public static synchronized void increase(){  //锁是基于静态方法的
		j++;
	}
	
	public static void main(String[] args) throws InterruptedException {
//		Thread t1 = new Thread(instance);
//		Thread t2 = new Thread(instance);
		Thread t1 = new Thread(new synchronized_01());
		Thread t2 = new Thread(new synchronized_01());
		t1.start();t2.start();
		t1.join();t2.join();
		System.out.println(j);
		
	}

	@Override
	public void run() {
		for(int i=0;i<10000000;i++){
			increase();
		}
		
	}
}
