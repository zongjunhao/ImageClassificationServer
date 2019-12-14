package kit;

import java.io.*;

public class FileOperate {

    public static void writeTxt(String txtPath, String content){
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(txtPath);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
            BufferedWriter writer  = new BufferedWriter(outputStreamWriter);

            writer.write(content);

            writer.flush();
            writer.close();
            outputStreamWriter.close();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public static String readTxt(String txtPath) {
        File file = new File(txtPath);
        if(file.isFile() && file.exists()){
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

                StringBuilder stringBuilder = new StringBuilder();
                String text = null;
                while((text = bufferedReader.readLine()) != null){
                    stringBuilder.append(text);
                }

                fileInputStream.close();
                inputStreamReader.close();
                bufferedReader.close();

                return stringBuilder.toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
