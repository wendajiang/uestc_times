package com.controller.main;

import java.awt.TrayIcon.MessageType;
import java.io.IOException;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.Buffer;

import net.ofp.OFFeaturesRequest;
import net.ofp.OFHello;

//socket+API
public class Controller {
	ServerSocket serverSocket = null;
	Socket socket = null;
	public static int xid = 0;
	public Controller(){
		try{
			serverSocket = new ServerSocket(6653);
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	//模拟链接过程
	public void conn(){
		
		byte[] buff = new byte[8];
		try {
			socket = serverSocket.accept();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		of_send_hello(socket);
		buff = receiveMessage(socket);
		System.out.println("收到1："+buff[0]+" "+buff[1]+" "+buff[2]+" "+buff[3]+" "
				+buff[4]+" "+buff[5]+" "+buff[6]+" "+buff[7]);
		of_send_features_request(socket);
		buff = receiveMessage(socket);
		System.out.println("收到2："+buff[0]+" "+buff[1]+" "+buff[2]+" "+buff[3]+" "
				+buff[4]+" "+buff[5]+" "+buff[6]+" "+buff[7]);
	}
	public void of_send_hello(Socket s) {
		OFHello ofHello = new OFHello();
		ofHello.setVersion((byte)0x01);
		ofHello.setType((byte)0x00);
		ofHello.setLongth((short)0x08);
		ofHello.setXid(getXid());
		byte [] message = new byte[8];
		message[0] = ofHello.getVersion();
		message[1] = ofHello.getType();
		short length = ofHello.getLongth();
		message[2] = (byte)(length>>8);
		message[3] = (byte)(length&0x00ff);
		int xid =ofHello.getXid();
		message[4] = (byte)((xid>>24)&0xff);
		message[5] = (byte)((xid>>16)&0xff);
		message[6] = (byte)((xid>>8)&0xff);
		message[7] = (byte)(xid&0xff);
		sendMessage(s,message);
	}
	public byte[] receiveMessage(Socket s){
		byte [] temp = new byte[8];
		try{
			s.getInputStream().read(temp);
		}catch(Exception e){
			e.printStackTrace();
		}
		return temp;
	}
	public void of_send_features_request(Socket s){
		OFFeaturesRequest ofFeaturesRequest = new OFFeaturesRequest();
		ofFeaturesRequest.setVersion((byte)0x01);
		ofFeaturesRequest.setType((byte)0x05);
		ofFeaturesRequest.setLongth((short)0x08);
		ofFeaturesRequest.setXid(getXid());
		byte [] message = new byte[8];
		message[0] = ofFeaturesRequest.getVersion();
		message[1] = ofFeaturesRequest.getType();
		short length = ofFeaturesRequest.getLongth();
		message[2] = (byte)(length>>8);
		message[3] = (byte)(length&0x00ff);
		int xid = ofFeaturesRequest.getXid();
		message[4] = (byte)((xid>>24)&0xff);
		message[5] = (byte)((xid>>16)&0xff);
		message[6] = (byte)((xid>>8)&0xff);
		message[7] = (byte)(xid&0xff);
		sendMessage(s,message);
	}
	public int getXid(){
		xid++;
		return xid;
	}
	public void sendMessage(Socket s,byte[] message) {
		
		try {
			OutputStream os = s.getOutputStream();
			os.write(message);
			os.flush();
			//os.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
