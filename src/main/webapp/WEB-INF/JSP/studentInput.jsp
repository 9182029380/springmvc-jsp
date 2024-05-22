<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Student Input Form</title>
</head>
<body>
    <h2>Student Input Form</h2>
    <form:form modelAttribute="student" method="post" action="output">
        <table>
            <tr>
                <td>Roll Number:</td>
                <td><form:input path="rollNumber" /></td>
                <td><form:errors path="rollNumber" cssClass="error" /></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><form:input path="name" /></td>
                <td><form:errors path="name" cssClass="error" /></td>
            </tr>
            <tr>
                <td>Email ID:</td>
                <td><form:input path="emailId" /></td>
                <td><form:errors path="emailId" cssClass="error" /></td>
            </tr>
            <tr>
                <td>Mark:</td>
                <td><form:input path="mark" /></td>
                <td><form:errors path="mark" cssClass="error" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Submit" />
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>
