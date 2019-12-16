<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<title>Student registration form</title>
</head>
<body>

    <form:form action="processForm" modelAttribute="student">

    First name: <form:input path="firstName"/>

    <br><br>

    Last name: <form:input path="lastName"/>

    <br><br>

    Country

    <form:select path="country">
        <form:options items ="${student.countryOptions}"/>
    </form:select>

    <br><br>

    Favorite Language:<br>

    Java <form:radiobutton path="favoriteLanguage" value="Java"/><br>
    JavaScript <form:radiobutton path="favoriteLanguage" value="JavaScript"/><br>
    C# <form:radiobutton path="favoriteLanguage" value="C#"/><br>
    C++ <form:radiobutton path="favoriteLanguage" value="C++"/><br>

    <br><br>

    <input type="submit" value="Submit"/>

    </form:form>

</body>
</html>