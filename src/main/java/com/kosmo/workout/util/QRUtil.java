package com.kosmo.workout.util;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

public class QRUtil {
	
	public static void makeQRCode(String url, int width, int height, String file_path, String file_name) {
		try {
			File file=null;
			//file_path]QR코드를 저장할 디렉토리 지정
			file=new File(file_path);
			if(!file.exists()) {
				file.mkdirs();
			}
			QRCodeWriter writer=new QRCodeWriter();
			url=new String(url.getBytes("UTF-8"),"ISO-8859-1");
			//url]코드 인식시 링크걸 URL주소
			BitMatrix matrix = writer.encode(url, BarcodeFormat.QR_CODE,width, height);
			int qrColor=0xFF2e4e96;
			MatrixToImageConfig config = new MatrixToImageConfig(qrColor,0xFFFFFFFF);
			BufferedImage qrImage = MatrixToImageWriter.toBufferedImage(matrix,config);
			ImageIO.write(qrImage, "png", new File(file_path+file_name));
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}/////////////////////makeQRCode

}////////////class
