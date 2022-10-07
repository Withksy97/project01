package test10828;

import java.io.*;
import java.util.Stack;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();
        Stack<Integer> stk = new Stack<>();

        int cnt = Integer.parseInt(br.readLine());
        for(int i=0; i<cnt;i++){
            StringTokenizer st = new StringTokenizer(br.readLine());
            String command = st.nextToken();
            if(command.equals("push")){
                stk.push(Integer.parseInt(st.nextToken()));
            } else if (command.equals("pop")) {
                if(stk.size() == 0) sb.append(-1).append("\n");
                else sb.append(stk.pop()).append("\n");
            }else if (command.equals("size")) {
                sb.append(stk.size()).append("\n");
            }else if (command.equals("empty")) {
                if(stk.size() == 0) sb.append(1).append("\n");
                else sb.append(0).append("\n");
            }else {
                if(stk.size() == 0) sb.append(-1).append("\n");
                else sb.append(stk.peek()).append("\n");
            }
        }
        System.out.println(sb);
    }
}
