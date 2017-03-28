import javax.swing.JOptionPane;

public class Greeter {
public static void main(String[] args) {
	String name;
	name=JOptionPane.showInputDialog("Type Your name");
	System.out.println(name);
	String greeting="Hello "+ name;
	JOptionPane.showMessageDialog(null, greeting);
}
}
