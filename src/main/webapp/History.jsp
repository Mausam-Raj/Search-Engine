<%@page import = "java.util.*"%>
<%@page import = "com.SearchEngine.HistoryResult"%>
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "style.css"></link>
</head>
<body>
    <h1>Simple Search Engine</h1>
    <form action = "Search">
        <input type = "text" name = "keyword"></input>
        <button type = "submit">Search</button>
    </form>
    <form action = "History">
        <button type = "submit">History</button>
    </form>
    <table border = 2 class = "resultTable">
        <tr>
            <th>Keyword</th>
            <th>Link</th>
        </tr>
        <%
            ArrayList<HistoryResult> results = (ArrayList<HistoryResult>) request.getAttribute("results");
             Collections.reverse(results);
            for(HistoryResult result : results) {
        %>
        <tr>
            <td><%out.println(result.getKeyword());%></td>
            <td><a href = "<%out.println(result.getLink());%>" target = "_blank"><%out.println(result.getLink());%></a></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>