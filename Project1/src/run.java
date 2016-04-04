import java.util.Arrays;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;


public class run {
	final static String menu = "1 = print out the movies given a star\n" +
			"2 = insert a new star into the database\n" +
			"3 = insert a new customer into database\n" +
			"4 = delete a customer from database\n" +
			"5 = provide metadata of database\n" +
			"6 = enter valid select/update/insert/delete SQL command\n" +
			"7 = exit the menu\n" +
			"8 = exit the program\n" +
			"input: ";
	final static Set<String> validInput = new HashSet<String>(Arrays.asList("1", "2", "3", "4", "5", "6", "7", "8"));

	public static void main(String[] args) {
		String input = "-1";
		while(!input.equals("8")) {
			input = getMenuInput();
			switch (input) {
			case "1": 
				printMoviesWithStar();
				break;
			case "2":
				insertStar();
				break;
			case "3":
				insertCustomer();
				break;
			case "4":
				deleteCustomer();
				break;
			case "5":
				insertMetadata();
				break;
			case "6":
				executeMySQL();
				break;
			case "7":
				exitMenu();
				break;
			case "8":
				System.out.println("kbaithx");
				break;
			
			}
		}		
	}


	private static void exitMenu() {
		// TODO Auto-generated method stub
		
	}

	private static void executeMySQL() {
		// TODO Auto-generated method stub
		
	}

	private static void insertMetadata() {
		// TODO Auto-generated method stub
		
	}

	private static void deleteCustomer() {
		// TODO Auto-generated method stub
		
	}

	private static void insertCustomer() {
		// TODO Auto-generated method stub
		
	}

	private static void insertStar() {
		// TODO Auto-generated method stub
		
	}

	private static void printMoviesWithStar() {
		// TODO Auto-generated method stub
		
	}

	private static String getMenuInput() {
		//makes sure that the user selects a valid input from the menu
		Scanner s = new Scanner(System.in);
		String input = "0";
		while(!validInput.contains(input)) {
			System.out.println(menu);
			input = s.next();
			if(!validInput.contains(input))
				System.out.println("invalid input");
		}
		s.close();
		return input;
	}
	
}
