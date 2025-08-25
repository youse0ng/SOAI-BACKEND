<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hospital Chatbot</title>
    <style>
        body {
            font-family: "Helvetica Neue", Arial, sans-serif;
            background-color: #eef2f5;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .chat-container {
            width: 100%;
            max-width: 600px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            height: 80vh;
        }
        .chat-header {
            background-color: #1a73e8;
            color: white;
            padding: 12px 16px;
            text-align: center;
            font-size: 1.2em;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .chat-body {
            flex: 1;
            padding: 16px;
            overflow-y: auto;
            background-color: #f4f7fb;
        }
        .message {
            margin-bottom: 12px;
            padding: 10px 14px;
            border-radius: 6px;
            max-width: 70%;
            word-wrap: break-word;
            font-size: 0.95em;
        }
        .user-message {
            background-color: #1a73e8;
            color: white;
            margin-left: auto;
            text-align: right;
        }
        .bot-message {
            background-color: #e3e9f2;
            color: #1a1a1a;
            margin-right: auto;
        }
        .chat-footer {
            padding: 12px 16px;
            border-top: 1px solid #d0d7de;
            background-color: #ffffff;
        }
        .chat-form {
            display: flex;
            gap: 10px;
        }
        textarea {
            flex: 1;
            padding: 10px;
            border: 1px solid #d0d7de;
            border-radius: 5px;
            resize: none;
            font-size: 0.95em;
            outline: none;
            background-color: #f7f9fc;
        }
        textarea:focus {
            border-color: #1a73e8;
            box-shadow: 0 0 0 2px rgba(26,115,232,0.2);
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #1a73e8;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 0.95em;
        }
        input[type="submit"]:hover {
            background-color: #155ab6;
        }
        .header-link a {
            color: white;
            text-decoration: none;
            font-size: 0.9em;
            padding: 4px 8px;
            border-radius: 4px;
            background-color: #155ab6;
        }
        .header-link a:hover {
            background-color: #0f3e80;
        }
        .history-link {
            text-align: center;
            margin-top: 8px;
        }
        .history-link a {
            color: #1a73e8;
            text-decoration: none;
            font-size: 0.9em;
        }
        .history-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="chat-container">
        <div class="chat-header">
            <h1>Hospital Chatbot</h1>
            <div class="header-link">
                <a href="/history">View History</a>
            </div>
        </div>
        <div class="chat-body">
            <% if (request.getAttribute("message") != null) { %>
                <div class="message user-message">
                    ${message}
                </div>
            <% } %>
            <% if (request.getAttribute("response") != null) { %>
                <div class="message bot-message">
                    ${response}
                </div>
            <% } %>
        </div>
        <div class="chat-footer">
            <form method="post" action="${pageContext.request.contextPath}/chat" class="chat-form">
                <textarea id="message" name="message" rows="2" placeholder="Type your message...">${message}</textarea>
                <input type="submit" value="Send">
            </form>
            <div class="history-link">
                <a href="/history">View Chat History</a>
            </div>
        </div>
    </div>
</body>
</html>
