import javax.swing.JOptionPane;

public class Snooper {
public static void main(String[] args) {
	String money;
	money= JOptionPane.showInputDialog("Where's the money!!");
	System.out.println(money);
	String yearBorn;
	yearBorn=JOptionPane.showInputDialog("What year you were born");
	int born=Integer.parseInt(yearBorn);
	System.out.println("you are "+(2017-born));
}
}
