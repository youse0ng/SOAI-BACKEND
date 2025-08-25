<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환자 검색</title>
<style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    .container { max-width: 1000px; margin: auto; }
    input[type=text] { width: 70%; padding: 8px; }
    input[type=submit] { padding: 8px 16px; }
    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
    table, th, td { border: 1px solid #ccc; }
    th, td { padding: 8px; text-align: left; vertical-align: top; }
    img { margin: 5px; border: 1px solid #ddd; }
</style>
</head>
<body>
<div class="container">
    <h2>환자 검색</h2>
    <form action="dashboard" method="post">
        <input type="text" name="name" placeholder="환자 이름 입력" required />
        <input type="submit" value="검색" />
    </form>

    <!-- 오류 메시지 -->
    <c:if test="${not empty error}">
        <p style="color:red;">${error}</p>
    </c:if>

    <!-- 검색 결과 -->
    <c:if test="${not empty studyData}">
        <h3>검색 결과</h3>
        <c:forEach var="study" items="${studyData}">
            <h4>환자: ${study.patient.patientName} (ID: ${study.patient.patientId})</h4>
            <p>생년월일: ${study.patient.patientBirthDate}, 성별: ${study.patient.patientSex}</p>
            <p>Study ID: ${study.studyId}, Series ID: ${study.seriesId}</p>

            <!-- 이미지 출력 -->
            <div>
                <c:forEach var="img" items="${study.images}">
                    <c:set var="instanceId" value="${fn:split(img,'/')[3]}"/>
                    <form action="segmentation" method="post" style="display:inline-block; margin:5px;">
                        <input type="hidden" name="patientId" value="${study.patient.patientId}"/>
                        <input type="hidden" name="studyId" value="${study.studyId}"/>
                        <input type="hidden" name="seriesId" value="${study.seriesId}"/>
                        <input type="hidden" name="instanceId" value="${instanceId}"/>
                        <input type="image" src="${img}" width="300" alt="AI 분석"/>
                    </form>
                </c:forEach>
            </div>
            <hr/>
        </c:forEach>
    </c:if>
</div>
</body>
</html>
