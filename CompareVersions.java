import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class CompareVersions {
    public int compareVersion(String version1, String version2) {
        List<Integer> v1 = version(version1);
        List<Integer> v2 = version(version2);

        return compare(v1, v2);
    }

    List<Integer> version(String v){
        List<Integer> versionAsIntList = new ArrayList();
        for (String v1: v.split(Pattern.quote("."))){
            versionAsIntList.add(Integer.parseInt(v1));
        }
        return versionAsIntList;
    }

    int compare(List<Integer> v1, List<Integer> v2){
        if (v1.size() < v2.size()){
            int extension =v2.size()-v1.size();
            for (int i=0;i< extension;i++){
                v1.add(0);
            }
        }
        if (v2.size() < v1.size()){
            int extension = v1.size()-v2.size();
            for (int i=0;i<extension;i++){
                v2.add(0);
            }
        }
        for (int i=0;i<v1.size();i++){
            if (v1.get(i) > v2.get(i)){
                return 1;
            } else if (v1.get(i) < v2.get(i)){
                return -1;
            }
        }
        return 0;
    }

    public static void main(String[] args){
        CompareVersions compare = new CompareVersions();
        System.out.println(compare.compareVersion("0.1", "1.0"));
        System.out.println(compare.compareVersion("1.0.1", "1"));

    }
}
