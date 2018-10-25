package day01;

import java.awt.List;
import java.util.ArrayList;
import java.util.HashMap;

public class t_01{

	public static void main(String[] args) {
//		Thread t1 = new Thread(){
//			@Override
//			public void run(){
//				int i=0;
//				while(i<100){
//					
//					System.out.println("Hello"+i);
//					i++;
//					
//				}
//				
//			}
//		};
//
//		Thread t2 = new Thread(new Runnable(){
//
//			@Override
//			public void run() {
//				int i =0;
//				while(i<100){
//
//					System.out.println("lucy"+i);
//					i++;
//					
//				}
//			}
//		});
//		t1.start();
//		t2.start();

		ArrayList<String> list = new ArrayList<>();
		HashMap<String, String> map = new HashMap<>();
		
		
	}
	
	



	public void interrupt01(){
		while(true){
			if(Thread.currentThread().isInterrupted()){
				System.out.println("Interrupted!");
				break;
			}
			Thread.yield();
		}
	}
	
	public void interrupt02(){
		while(true){
			if(Thread.currentThread().isInterrupted()){
				System.out.println("inte...");
				break;
			}
			try{
				Thread.sleep(2000);
			}catch(InterruptedException e){
				System.out.println("Inte.. when Sleep");
				//设置中断状态，抛出异常后会清除中断标记
				Thread.currentThread().interrupt();
			}
			Thread.yield();
		}
	}
}
