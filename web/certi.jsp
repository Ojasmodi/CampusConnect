<%-- 
    Document   : certi
    Created on : Apr 3, 2019, 12:14:45 PM
    Author     : OJAS MODI
--%>

<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%-- 
    Document   : certificate
    Created on : Mar 21, 2019, 12:43:01 AM
    Author     : Abhishek Chauhan
--%>


<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Certificate</title>
    </head>
    <body>
        <%
            //String s=session.getAttribute("name").toString();
response.setContentType("application/pdf");
Document document = new Document();
PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());
document.open();
Image img=Image.getInstance("C:\\Users\\OJAS MODI\\Desktop\\certi1.png");
img.scaleAbsolute(159f, 159f);
PdfPTable table = new PdfPTable(1);
table.addCell(img);
document.add(table);
//document.add(img);
Paragraph p = new Paragraph();
p.add("This is to certify that");
p.setAlignment(Element.ALIGN_CENTER);
document.add(p);
Paragraph p2 = new Paragraph();
p2.add("Ojas Modi"); //name from database
p2.setAlignment(Element.ALIGN_CENTER);
document.add(p2);
Paragraph p3 = new Paragraph();
p3.add("has successfully completed the course."); //name from database
p3.setAlignment(Element.ALIGN_CENTER);
document.add(p3);
Paragraph p4 = new Paragraph();
p4.add("                           "); //name from database
p4.setAlignment(Element.ALIGN_CENTER);
document.add(p4);
Image img2=Image.getInstance("C:\\Users\\OJAS MODI\\Desktop\\certi2.png");
img2.scaleAbsolute(159f, 159f);
PdfPTable table1 = new PdfPTable(1);
table1.addCell(img2);
document.add(table1);
Font f = new Font();
f.setStyle(Font.BOLD);
f.setSize(8);
document.close();
%>
    </body>
</html>
