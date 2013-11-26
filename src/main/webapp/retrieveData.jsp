<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="edu.gatech.cs1332.autocomplete.model.AutoComplete"%>

<%
    AutoComplete trie = new AutoComplete();
    String query = request.getParameter("q");
    List<String> states = trie.getData(query);
    
    Iterator<String> iterator = states.iterator();
    while(iterator.hasNext()) {
        String state = (String)iterator.next();
        out.println(state);
    }
%>