import java.util.Arrays;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;


public class run {
	final static String menu = "1 = first one\n" +
			"2 = \n" +
			"input: ";
	final static Set<String> validInput = new HashSet<String>(Arrays.asList("1", "2"));

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		String input = "0";
		while(!validInput.contains(input)) {
			System.out.println(menu);
			input = s.next();
			System.out.println("invalid input");
		}
		s.close();
		System.out.println("solution " + input);
		
	}
	
}
