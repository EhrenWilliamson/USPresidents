<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>

<link href="StyleSheet.css" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>U.S. Presidents</title>
</head>

<body>
	<H1>UNITED STATES PRESIDENTS</H1>
	<form action="Presidents.do" method="POST">

		<img class ="resize" src="${currentPresident.picURL}" />
<button class ="picture" type="submit" name="previous" > <img src = "http://www.iconninja.com/files/259/183/804/backward-arrow-blue-icon.png" ></button>
<button class ="picture" type="submit" name="next" > <img src="http://www.iconninja.com/files/515/987/819/forward-arrow-next-icon.png"></button>

		<ul>
			<li>Name: ${currentPresident.name}</li>
			<li>TermNumber: ${currentPresident.termNumber}</li>
			<li>Party: ${currentPresident.party}</li>
			<li>TermLength: From: ${currentPresident.termBeginDate} To:
				${currentPresident.termEndDate}</li>
			<li>Interesting Fact: ${currentPresident.fact}</li>
		</ul>

		<label>Search by Term Number: <input type="text"
			name="termNumber">    <input type="submit" value="submit" name="getByTermNumber">
		</label>

	</form>
</body>
</html>