class Callme {
	
	//Method synchronization for use just before use synchronized 
	//synchronized void Call(String msg)
	 void Call(String msg) {
	   System.out.print("["+msg);
	   try
	   {
		   Thread.sleep(1000);
	   }
	   catch (InterruptedException e) {
	         System.out.println("Interrupted");  }
	   
	   System.out.print("]");
   }
}
    

class Caller implements Runnable   {
	Callme targ;
	String msgg;
	Thread th;
	Caller (Callme t, String s)
	{
		targ=t;
		msgg=s;
		th = new Thread(this);
	    th.start(); 
		
	}
	
	public void run()
	{   
		//object synchronization system ;
		synchronized(targ) {
			targ.Call(msgg);
		}
			
	}

}  

class LAB5 {
 public static void main(String args[]) {
    Callme target = new Callme();
    Caller obj= new Caller(target,"Information");
    Caller ob1= new Caller(target,"Communication");
    Caller ob2= new Caller(target,"Engineering");
 }
}