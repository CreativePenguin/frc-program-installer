import java.util.ArrayList;

public class getLatestCTREVersion {

    public static void main(String[] args) {
        String val = "";
        String search = args[args.length - 1];
        args[args.length - 1] = "";
        for(int i = 0; i < args.length; i++) {
            if(args[i].contains(search)) val = args[i];
        }

        // " v5.0.3.3.zip" is a hypothetical versioning. They're all the same length
        int startIndex = val.indexOf(search);
        int endIndex = startIndex + "v5.0.3.3.zip".length();
        System.out.println(val.substring(startIndex, endIndex));
    }

}
