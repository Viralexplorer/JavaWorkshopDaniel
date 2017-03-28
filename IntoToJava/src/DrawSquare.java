import org.jointheleague.graphical.robot.Robot;

public class DrawSquare {
public static void main(String[] args) {
	Robot virax;
	virax=new Robot("mini");
	virax.penDown();
	virax.setSpeed(10);
	for (int i = 0; i < 4; i++) {
		virax.setRandomPenColor();
			virax.move(500);
	virax.turn(-90);
	}

	
	
}
}