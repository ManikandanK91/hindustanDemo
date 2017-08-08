<%@ page trimDirectiveWhitespaces="true" contentType="application/json" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="addonProduct" tagdir="/WEB-INF/tags/addons/b2bacceleratoraddon/responsive/product" %>

<c:set var="skuIndex" scope="session" value="${skuIndex}" />

{
	"pagination" : {
		"currentPage":	"${searchResultsData.pagination.currentPage}",
		"numberOfPages": "${searchResultsData.pagination.numberOfPages}",
		"totalNumberOfResults" : "${searchResultsData.pagination.totalNumberOfResults}",
		"searchResultsType" : "${fn:escapeXml(searchResultType)}"
	},
	
	"productListerHtml":  "<spring:escapeBody javaScriptEscape="true">
										<c:forEach items="${searchResultsData.results}" var="product" varStatus="status">
											<c:choose>
												<c:when test="${not empty product.variantMatrix && isOrderForm}">
													<addonProduct:productListerOrderForm product="${product}" />
												</c:when>
												<c:when test="${searchResultType eq 'create-order-form'}">
													<addonProduct:productFilterOrderForm product="${product}" />
												</c:when>
												<c:otherwise>
													<addonProduct:productListerItem product="${product}" isOrderForm="${isOrderForm}" />
												</c:otherwise>
											</c:choose>
										</c:forEach>
						  </spring:escapeBody>",
	"skuIndex" : "${sessionScope.skuIndex}"
}
