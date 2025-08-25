<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AI 분석 페이지</title>
<style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    .image-container { display: flex; gap: 20px; margin-top: 20px; }
    .image-box { text-align: center; }
    .image-box img { border: 1px solid #ccc; }
</style>
</head>
<body>
<h2>AI 분석 페이지</h2>

<p>환자 ID: ${patientId}</p>
<p>Study ID: ${studyId}</p>
<p>Series ID: ${seriesId}</p>
<p>Instance ID: ${instanceId}</p>

<!-- 원본 이미지 & Segmentation Overlay 나란히 -->
<div class="image-container">
    <div class="image-box">
        <p>원본 이미지</p>
        <img src="${instancePreviewUrl}" width="500"/>
    </div>

    <c:if test="${not empty segmentationImage}">
        <div class="image-box">
            <p>Segmentation Overlay</p>
            <img src="${segmentationImage}" width="500"/>
        </div>
    </c:if>
</div>

<c:if test="${not empty segmentationError}">
    <p style="color:red;">${segmentationError}</p>
</c:if>

</body>
</html>
