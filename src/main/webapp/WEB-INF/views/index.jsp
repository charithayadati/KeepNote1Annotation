<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

         <form action="saveNote" method="post" >
              <table>
                             <tr>
                                 <td>NoteId</td>
                                 <td><input type="number" name="noteId"/></td>
                             </tr>
                             <tr>
                                 <td>NoteTitle</td>
                                 <td><input type="text" name="noteTitle"/></td>
                             </tr>
                               <tr>
                                  <td>NoteContent</td>
                                 <td><input type="text" name="noteContent"/></td>
                             </tr>
                             <tr>
                                <td>NoteStatus</td>
                                 <td><input type="text" name="noteStatus"/></td>
                            </tr>

                           <tr>
                             <td  colspan="2"><input type="submit" value="saveNote"></td>
                            </tr>
              </table>
         </form>
<table border="2" width="70%" cellpadding="2">
<tr><th>NoteId</th><th>NoteTitle</th><th>NoteContent</th><th>NoteStatus</th><th>NoteCreatedAt</th></tr>
   <c:forEach var="note" items="${notes}">
   <tr>
   <td>${note.noteId}</td>
   <td>${note.noteTitle}</td>
   <td>${note.noteContent}</td>
   <td>${note.noteStatus}</td>
   <td>${note.createdAt}</td>
   </tr>
   </c:forEach>
   </table>
 <form:form id="deleteNote" method="post" action="deleteNote">
    	 <input type="submit" value="Delete" />
          </form:form>

</body>
</html>