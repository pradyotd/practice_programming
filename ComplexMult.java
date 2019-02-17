import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ComplexMult {
    class Complex{
        public int real;
        public int imaginary;
        public  Pattern pattern;
        Complex(String a){
            this.pattern =  Pattern.compile("(-?\\d+)\\+(-?\\d+)i");
            Matcher matcher = pattern.matcher(a);
            this.real  =   Integer.parseInt(matcher.group(1));
            this.imaginary  =   Integer.parseInt(matcher.group(2));
        }
    }

    String multiply(Complex a , Complex b){
        int real = a.real * b.real - (a.imaginary * b.imaginary);
        int imaginary = a.real * b.imaginary + a.imaginary * b.real;
        return String.format("%d+%d", real, imaginary);
    }

    public String complexNumberMultiply(String a, String b) {
        Complex c1 = new Complex(a);
        Complex c2 = new Complex(a);

        return multiply(c1, c2);
    }

    public  static void  main(String[] args){
        ComplexMult mult = new ComplexMult();
        System.out.println(mult.complexNumberMultiply("1+1i", "1+1i"));
    }
}
