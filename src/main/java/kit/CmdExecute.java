package kit;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class CmdExecute {

    public static void executeInstruction(String instruction) {
        try {
            Process process = Runtime.getRuntime().exec(instruction);
            InputStream inputStream = process.getInputStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            String line = null;
            StringBuilder b = new StringBuilder();
            while ((line = bufferedReader.readLine()) != null) {
                b.append(line).append("\n");
            }
            String str = new String(b.toString().getBytes("gbk"), "utf-8");
            System.out.println("str = " + str);
            process.waitFor();
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void executeCmdFile(String filePath) {
        String cmd = "cmd /c start " + filePath;
        try {
            Process process = Runtime.getRuntime().exec(cmd);
            process.waitFor();
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}
