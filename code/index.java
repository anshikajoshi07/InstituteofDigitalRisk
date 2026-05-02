import java.util.Scanner;

public class Assignment {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Number of Elements: ");
        int n = sc.nextInt();

        int sum = 0;
        int num;

        int largest = Integer.MIN_VALUE;
        int smallest = Integer.MAX_VALUE;

        for (int i = 1; i <= n; i++) {
            System.out.print("Number " + i + " add: ");
            num = sc.nextInt();

            sum += num;

            if (num > largest) {
                largest = num;
            }

            if (num < smallest) {
                smallest = num;
            }
        }

        double average = (double) sum / n;

        System.out.println("\n--- Result ---");
        System.out.println("Sum = " + sum);
        System.out.println("Average = " + average);
        System.out.println("Largest Number = " + largest);
        System.out.println("Smallest Number = " + smallest);

        sc.close();
    }
}