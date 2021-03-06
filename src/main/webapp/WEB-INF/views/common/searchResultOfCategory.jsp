<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div class="tab_type1">
	<!-- tab_type1 -->
	<input type="hidden" id="whichPageSearch" value="total" /> <input
		type="hidden" id="page" value="${page }" /> <input type="hidden"
		id="researchQuery" value="${expression }" /> <input type="hidden"
		id="researchField" value="${researchField }" />
	<ul>
		<li>
			<p class="tab none_mar" id="0">통합검색</p>
		</li>

		<li <c:if test="${category==3 }">class="on"</c:if>>
			<p class="tab" id="3">프로젝트</p>
			<div class="t_content">
				<!-- t_content 프로젝트 -->

				<div class="list_type1">
					<!-- list_type1 -->
					<ul>
						<li>
							<dl>
								<dt>
									<span class="bold"> <c:choose>
											<c:when test="${total <= 0}">
        										검색 결과가 없습니다.
    										</c:when>
											<c:otherwise>
        									 	총 ${total } 건을 검색하였습니다.
    										</c:otherwise>
										</c:choose>
									</span>
								</dt>
								<dt>
									정렬 <select class="sort" title="정렬">
										<option value="score" <c:if test="${sort_field==\"score\" }">selected="selected"</c:if>>유사도순</option>
										<option value="post_time" <c:if test="${sort_field==\"post_time\" }">selected="selected"</c:if>>최신순</option>
									</select> 범위 <select class="range" title="범위">
										<option value="all" <c:if test="${field==\"all\" }">selected="selected"</c:if>>전체</option>
										<option value="post_subject" <c:if test="${field==\"post_subject\" }">selected="selected"</c:if>>제목</option>
										<option value="post_text" <c:if test="${field==\"post_text\" }">selected="selected"</c:if>>본문</option>
										<option value="post_username" <c:if test="${field==\"post_username\" }">selected="selected"</c:if>>작성자</option>
									</select> 기간 <select class="period" title="기간" onchange="clearDate()">
										<option value="total" <c:if test="${period==\"total\" }">selected="selected"</c:if>>전체</option>
										<option value="week" <c:if test="${period==\"week\" }">selected="selected"</c:if>>1주</option>
										<option value="month" <c:if test="${period==\"month\" }">selected="selected"</c:if>>1개월</option>
										<option value="year" <c:if test="${period==\"year\" }">selected="selected"</c:if>>1년</option>
										<option value="custom" <c:if test="${period==\"custom\" }">selected="selected"</c:if>>직접 입력</option>
									</select> <input type="text" class="sDate" name="sDate" 
										onchange="day_check()" readonly="true" <c:if test="${sDate!=null }"> value=${sDate }</c:if> /> <label for="option2_1">부터</label> <input
										type="text" class="eDate" name="eDate" onchange="day_check()" readonly="true" <c:if test="${sDate!=null }">value=${eDate }</c:if> />
									<label for="option2_2">까지</label> 
									<input type="hidden" id="researchQuery" value="${expression }" /> 
									<input type="hidden" id="researchField" value="${researchField }" />
									<button class="btn_reset" onclick="apply()">
										<span>적용</span>
									</button>
								</dt>
							</dl>
						</li>
					</ul>
				</div>
				<!-- list_type1 -->


				<div class="mar_top50 hei_type1">
					<!-- 프로젝트 -->
					<p class="line_type1"></p>
					<span class="txt_bold"> <img
						src="${contextPath}/resources/images/searchBar/btn_type3_arr_rgt.gif"
						alt="프로젝트" /> 프로젝트
					</span>
					<p class="line_type2"></p>


					<ul class="list_type5">
						<c:forEach var="scd" items="${scdList }" varStatus="status">
							<li>
								<dl>
									<dt>
										<span class="bu_divi">${scd.postId }</span> <span
											class="bu_divi">[${scd.parentForumName }]</span> <a
											href="${contextPath}/forumDB/detailPage?topic_id=${scd.topicId }">${scd.hlPostSubject }</a>
										<span> (유사도 :${scd.score })</span>
									</dt>

									<dd>
										<span class="bu_divi none_pl">작성자 : ${scd.postUsername }</span>
										<a><span>작성일 : ${scd.postDate }</span></a>
									</dd>
									<dd>
										<span class="bu_divi none_pl">카테고리 : ${scd.forumName }</span>
									</dd>

									<dd class="desc">${scd.hlPostText }</dd>
									<dd>
										<span class="bu_divi none_pl">첨부파일수 :
											${scd.postAttachment }</span> <br> <br> <br>
									</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 프로젝트 -->


				<div id="page" class="page">
					<jsp:include page="page.jsp"></jsp:include>
				</div>

			</div> <!-- t_content 프로젝트 -->

		</li>
		<li <c:if test="${category==36 }">class="on"</c:if>>
			<p class="tab" id="36">개발이슈</p>
			<div class="t_content">
				<!-- t_content 개발이슈 -->

				<div class="list_type1">
					<!-- list_type1 -->
					<ul>
						<li>
							<dl>
								<dt>
									<span class="bold"> <c:choose>
											<c:when test="${total <= 0}">
        										검색 결과가 없습니다.
    										</c:when>
											<c:otherwise>
        									 	총 ${total } 건을 검색하였습니다.
    										</c:otherwise>
										</c:choose>
									</span>
								</dt>
								<dt>
									정렬 <select class="sort" title="정렬">
										<option value="score" <c:if test="${sort_field==\"score\" }">selected="selected"</c:if>>유사도순</option>
										<option value="post_time" <c:if test="${sort_field==\"post_time\" }">selected="selected"</c:if>>최신순</option>
									</select> 범위 <select class="range" title="범위">
										<option value="all" <c:if test="${field==\"all\" }">selected="selected"</c:if>>전체</option>
										<option value="post_subject" <c:if test="${field==\"post_subject\" }">selected="selected"</c:if>>제목</option>
										<option value="post_text" <c:if test="${field==\"post_text\" }">selected="selected"</c:if>>본문</option>
										<option value="post_username" <c:if test="${field==\"post_username\" }">selected="selected"</c:if>>작성자</option>
									</select> 기간 <select class="period" title="기간" onchange="clearDate()">
										<option value="total" <c:if test="${period==\"total\" }">selected="selected"</c:if>>전체</option>
										<option value="week" <c:if test="${period==\"week\" }">selected="selected"</c:if>>1주</option>
										<option value="month" <c:if test="${period==\"month\" }">selected="selected"</c:if>>1개월</option>
										<option value="year" <c:if test="${period==\"year\" }">selected="selected"</c:if>>1년</option>
										<option value="custom" <c:if test="${period==\"custom\" }">selected="selected"</c:if>>직접 입력</option>
									</select> <input type="text" class="sDate" name="sDate" 
										onchange="day_check()" readonly="true" <c:if test="${sDate!=null }"> value=${sDate }</c:if> /> <label for="option2_1">부터</label> <input
										type="text" class="eDate" name="eDate" onchange="day_check()" readonly="true" <c:if test="${sDate!=null }">value=${eDate }</c:if> />
									<label for="option2_2">까지</label> 
									<input type="hidden" id="researchQuery" value="${expression }" /> 
									<input type="hidden" id="researchField" value="${researchField }" />
									<button class="btn_reset" onclick="apply()">
										<span>적용</span>
									</button>
								</dt>
							</dl>
						</li>
					</ul>

				</div>
				<!-- list_type1 -->


				<div class="mar_top50 hei_type1">
					<!-- 개발이슈 -->
					<p class="line_type1"></p>
					<span class="txt_bold"> <img
						src="${contextPath}/resources/images/searchBar/btn_type3_arr_rgt.gif"
						alt="개발이슈" /> 개발이슈
					</span>
					<p class="line_type2"></p>


					<ul class="list_type5">
						<c:forEach var="scd" items="${scdList }" varStatus="status">
							<li>
								<dl>
									<dt>
										<span class="bu_divi">${scd.postId }</span> <span
											class="bu_divi">[${scd.parentForumName }]</span> <a
											href="${contextPath}/forumDB/detailPage?topic_id=${scd.topicId }">${scd.hlPostSubject }</a>
										<span> (유사도 :${scd.score })</span>
									</dt>

									<dd>
										<span class="bu_divi none_pl">작성자 : ${scd.postUsername }</span>
										<a><span>작성일 : ${scd.postDate }</span></a>
									</dd>
									<dd>
										<span class="bu_divi none_pl">카테고리 : ${scd.forumName }</span>
									</dd>

									<dd class="desc">${scd.hlPostText }</dd>
									<dd>
										<span class="bu_divi none_pl">첨부파일수 :
											${scd.postAttachment }</span> <br> <br> <br>
									</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 개발이슈 -->


				<div id="page" class="page">
					<jsp:include page="page.jsp"></jsp:include>
				</div>

			</div> <!-- t_content 개발이슈 -->

		</li>
		<li <c:if test="${category==37 }">class="on"</c:if>>
			<p class="tab" id="37">지식공유</p>
			<div class="t_content">
				<!-- t_content 지식공유 -->

				<div class="list_type1">
					<!-- list_type1 -->
					<ul>
						<li>
							<dl>
								<dt>
									<span class="bold"> <c:choose>
											<c:when test="${total <= 0}">
        										검색 결과가 없습니다.
    										</c:when>
											<c:otherwise>
        									 	총 ${total } 건을 검색하였습니다.
    										</c:otherwise>
										</c:choose>
									</span>
								</dt>
								<dt>
									정렬 <select class="sort" title="정렬">
										<option value="score" <c:if test="${sort_field==\"score\" }">selected="selected"</c:if>>유사도순</option>
										<option value="post_time" <c:if test="${sort_field==\"post_time\" }">selected="selected"</c:if>>최신순</option>
									</select> 범위 <select class="range" title="범위">
										<option value="all" <c:if test="${field==\"all\" }">selected="selected"</c:if>>전체</option>
										<option value="post_subject" <c:if test="${field==\"post_subject\" }">selected="selected"</c:if>>제목</option>
										<option value="post_text" <c:if test="${field==\"post_text\" }">selected="selected"</c:if>>본문</option>
										<option value="post_username" <c:if test="${field==\"post_username\" }">selected="selected"</c:if>>작성자</option>
									</select> 기간 <select class="period" title="기간" onchange="clearDate()">
										<option value="total" <c:if test="${period==\"total\" }">selected="selected"</c:if>>전체</option>
										<option value="week" <c:if test="${period==\"week\" }">selected="selected"</c:if>>1주</option>
										<option value="month" <c:if test="${period==\"month\" }">selected="selected"</c:if>>1개월</option>
										<option value="year" <c:if test="${period==\"year\" }">selected="selected"</c:if>>1년</option>
										<option value="custom" <c:if test="${period==\"custom\" }">selected="selected"</c:if>>직접 입력</option>
									</select> <input type="text" class="sDate" name="sDate" 
										onchange="day_check()" readonly="true" <c:if test="${sDate!=null }"> value=${sDate }</c:if> /> <label for="option2_1">부터</label> <input
										type="text" class="eDate" name="eDate" onchange="day_check()" readonly="true" <c:if test="${sDate!=null }">value=${eDate }</c:if> />
									<label for="option2_2">까지</label> 
									<input type="hidden" id="researchQuery" value="${expression }" /> 
									<input type="hidden" id="researchField" value="${researchField }" />
									<button class="btn_reset" onclick="apply()">
										<span>적용</span>
									</button>
								</dt>
							</dl>
						</li>
					</ul>

				</div>
				<!-- list_type1 -->


				<div class="mar_top50 hei_type1">
					<!-- 지식공유 -->
					<p class="line_type1"></p>
					<span class="txt_bold"> <img
						src="${contextPath}/resources/images/searchBar/btn_type3_arr_rgt.gif"
						alt="지식공유" /> 지식공유
					</span>
					<p class="line_type2"></p>


					<ul class="list_type5">
						<c:forEach var="scd" items="${scdList }" varStatus="status">
							<li>
								<dl>
									<dt>
										<span class="bu_divi">${scd.postId }</span> <span
											class="bu_divi">[${scd.parentForumName }]</span> <a
											href="${contextPath}/forumDB/detailPage?topic_id=${scd.topicId }">${scd.hlPostSubject }</a>
										<span> (유사도 :${scd.score })</span>
									</dt>

									<dd>
										<span class="bu_divi none_pl">작성자 : ${scd.postUsername }</span>
										<a><span>작성일 : ${scd.postDate }</span></a>
									</dd>
									<dd>
										<span class="bu_divi none_pl">카테고리 : ${scd.forumName }</span>
									</dd>

									<dd class="desc">${scd.hlPostText }</dd>
									<dd>
										<span class="bu_divi none_pl">첨부파일수 :
											${scd.postAttachment }</span> <br> <br> <br>
									</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 지식공유 -->


				<div id="page" class="page">
					<jsp:include page="page.jsp"></jsp:include>
				</div>

			</div> <!-- t_content 지식공유 -->

		</li>
		<li <c:if test="${category==7 }">class="on"</c:if>>
			<p class="tab" id="7">그룹</p>
			<div class="t_content">
				<!-- t_content 그룹 -->

				<div class="list_type1">
					<!-- list_type1 -->
					<ul>
						<li>
							<dl>
								<dt>
									<span class="bold"> <c:choose>
											<c:when test="${total <= 0}">
        										검색 결과가 없습니다.
    										</c:when>
											<c:otherwise>
        									 	총 ${total } 건을 검색하였습니다.
    										</c:otherwise>
										</c:choose>
									</span>
								</dt>
								<dt>
									정렬 <select class="sort" title="정렬">
										<option value="score" <c:if test="${sort_field==\"score\" }">selected="selected"</c:if>>유사도순</option>
										<option value="post_time" <c:if test="${sort_field==\"post_time\" }">selected="selected"</c:if>>최신순</option>
									</select> 범위 <select class="range" title="범위">
										<option value="all" <c:if test="${field==\"all\" }">selected="selected"</c:if>>전체</option>
										<option value="post_subject" <c:if test="${field==\"post_subject\" }">selected="selected"</c:if>>제목</option>
										<option value="post_text" <c:if test="${field==\"post_text\" }">selected="selected"</c:if>>본문</option>
										<option value="post_username" <c:if test="${field==\"post_username\" }">selected="selected"</c:if>>작성자</option>
									</select> 기간 <select class="period" title="기간" onchange="clearDate()">
										<option value="total" <c:if test="${period==\"total\" }">selected="selected"</c:if>>전체</option>
										<option value="week" <c:if test="${period==\"week\" }">selected="selected"</c:if>>1주</option>
										<option value="month" <c:if test="${period==\"month\" }">selected="selected"</c:if>>1개월</option>
										<option value="year" <c:if test="${period==\"year\" }">selected="selected"</c:if>>1년</option>
										<option value="custom" <c:if test="${period==\"custom\" }">selected="selected"</c:if>>직접 입력</option>
									</select> <input type="text" class="sDate" name="sDate" 
										onchange="day_check()" readonly="true" <c:if test="${sDate!=null }"> value=${sDate }</c:if> /> <label for="option2_1">부터</label> <input
										type="text" class="eDate" name="eDate" onchange="day_check()" readonly="true" <c:if test="${sDate!=null }">value=${eDate }</c:if> />
									<label for="option2_2">까지</label> 
									<input type="hidden" id="researchQuery" value="${expression }" /> 
									<input type="hidden" id="researchField" value="${researchField }" />
									<button class="btn_reset" onclick="apply()">
										<span>적용</span>
									</button>
								</dt>
							</dl>
						</li>
					</ul>

				</div>
				<!-- list_type1 -->


				<div class="mar_top50 hei_type1">
					<!-- 그룹 -->
					<p class="line_type1"></p>
					<span class="txt_bold"> <img
						src="${contextPath}/resources/images/searchBar/btn_type3_arr_rgt.gif"
						alt="그룹" /> 그룹
					</span>
					<p class="line_type2"></p>


					<ul class="list_type5">
						<c:forEach var="scd" items="${scdList }" varStatus="status">
							<li>
								<dl>
									<dt>
										<span class="bu_divi">${scd.postId }</span> <span
											class="bu_divi">[${scd.parentForumName }]</span> <a
											href="${contextPath}/forumDB/detailPage?topic_id=${scd.topicId }">${scd.hlPostSubject }</a>
										<span> (유사도 :${scd.score })</span>
									</dt>

									<dd>
										<span class="bu_divi none_pl">작성자 : ${scd.postUsername }</span>
										<a><span>작성일 : ${scd.postDate }</span></a>
									</dd>
									<dd>
										<span class="bu_divi none_pl">카테고리 : ${scd.forumName }</span>
									</dd>

									<dd class="desc">${scd.hlPostText }</dd>
									<dd>
										<span class="bu_divi none_pl">첨부파일수 :
											${scd.postAttachment }</span> <br> <br> <br>
									</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 그룹 -->


				<div id="page" class="page">
					<jsp:include page="page.jsp"></jsp:include>
				</div>

			</div> <!-- t_content 그룹 -->

		</li>
		<li <c:if test="${category==14 }">class="on"</c:if>>
			<p class="tab" id="14">기타</p>
			<div class="t_content">
				<!-- t_content 기타 -->

				<div class="list_type1">
					<!-- list_type1 -->
					<ul>
						<li>
							<dl>
								<dt>
									<span class="bold"> <c:choose>
											<c:when test="${total <= 0}">
        										검색 결과가 없습니다.
    										</c:when>
											<c:otherwise>
        									 	총 ${total } 건을 검색하였습니다.
    										</c:otherwise>
										</c:choose>
									</span>
								</dt>
								<dt>
									정렬 <select class="sort" title="정렬">
										<option value="score" <c:if test="${sort_field==\"score\" }">selected="selected"</c:if>>유사도순</option>
										<option value="post_time" <c:if test="${sort_field==\"post_time\" }">selected="selected"</c:if>>최신순</option>
									</select> 범위 <select class="range" title="범위">
										<option value="all" <c:if test="${field==\"all\" }">selected="selected"</c:if>>전체</option>
										<option value="post_subject" <c:if test="${field==\"post_subject\" }">selected="selected"</c:if>>제목</option>
										<option value="post_text" <c:if test="${field==\"post_text\" }">selected="selected"</c:if>>본문</option>
										<option value="post_username" <c:if test="${field==\"post_username\" }">selected="selected"</c:if>>작성자</option>
									</select> 기간 <select class="period" title="기간" onchange="clearDate()">
										<option value="total" <c:if test="${period==\"total\" }">selected="selected"</c:if>>전체</option>
										<option value="week" <c:if test="${period==\"week\" }">selected="selected"</c:if>>1주</option>
										<option value="month" <c:if test="${period==\"month\" }">selected="selected"</c:if>>1개월</option>
										<option value="year" <c:if test="${period==\"year\" }">selected="selected"</c:if>>1년</option>
										<option value="custom" <c:if test="${period==\"custom\" }">selected="selected"</c:if>>직접 입력</option>
									</select> <input type="text" class="sDate" name="sDate" 
										onchange="day_check()" readonly="true" <c:if test="${sDate!=null }"> value=${sDate }</c:if> /> <label for="option2_1">부터</label> <input
										type="text" class="eDate" name="eDate" onchange="day_check()" readonly="true" <c:if test="${sDate!=null }">value=${eDate }</c:if> />
									<label for="option2_2">까지</label> 
									<input type="hidden" id="researchQuery" value="${expression }" /> 
									<input type="hidden" id="researchField" value="${researchField }" />
									<button class="btn_reset" onclick="apply()">
										<span>적용</span>
									</button>
								</dt>
							</dl>
						</li>
					</ul>

				</div>
				<!-- list_type1 -->


				<div class="mar_top50 hei_type1">
					<!-- 기타 -->
					<p class="line_type1"></p>
					<span class="txt_bold"> <img
						src="${contextPath}/resources/images/searchBar/btn_type3_arr_rgt.gif"
						alt="기타" /> 기타
					</span>
					<p class="line_type2"></p>


					<ul class="list_type5">
						<c:forEach var="scd" items="${scdList }" varStatus="status">
							<li>
								<dl>
									<dt>
										<span class="bu_divi">${scd.postId }</span> <span
											class="bu_divi">[${scd.parentForumName }]</span> <a
											href="${contextPath}/forumDB/detailPage?topic_id=${scd.topicId }">${scd.hlPostSubject }</a>
										<span> (유사도 :${scd.score })</span>
									</dt>

									<dd>
										<span class="bu_divi none_pl">작성자 : ${scd.postUsername }</span>
										<a><span>작성일 : ${scd.postDate }</span></a>
									</dd>
									<dd>
										<span class="bu_divi none_pl">카테고리 : ${scd.forumName }</span>
									</dd>

									<dd class="desc">${scd.hlPostText }</dd>
									<dd>
										<span class="bu_divi none_pl">첨부파일수 :
											${scd.postAttachment }</span> <br> <br> <br>
									</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 기타 -->


				<div id="page" class="page">
					<jsp:include page="page.jsp"></jsp:include>
				</div>

			</div> <!-- t_content 기타 -->

		</li>
		<li <c:if test="${category==43 }">class="on"</c:if>>
			<p class="tab" id="43">포럼</p>
			<div class="t_content">
				<!-- t_content 포럼 -->

				<div class="list_type1">
					<!-- list_type1 -->
					<ul>
						<li>
							<dl>
								<dt>
									<span class="bold"> <c:choose>
											<c:when test="${total <= 0}">
        										검색 결과가 없습니다.
    										</c:when>
											<c:otherwise>
        									 	총 ${total } 건을 검색하였습니다.
    										</c:otherwise>
										</c:choose>
									</span>
								</dt>
								<dt>
									정렬 <select class="sort" title="정렬">
										<option value="score" <c:if test="${sort_field==\"score\" }">selected="selected"</c:if>>유사도순</option>
										<option value="post_time" <c:if test="${sort_field==\"post_time\" }">selected="selected"</c:if>>최신순</option>
									</select> 범위 <select class="range" title="범위">
										<option value="all" <c:if test="${field==\"all\" }">selected="selected"</c:if>>전체</option>
										<option value="post_subject" <c:if test="${field==\"post_subject\" }">selected="selected"</c:if>>제목</option>
										<option value="post_text" <c:if test="${field==\"post_text\" }">selected="selected"</c:if>>본문</option>
										<option value="post_username" <c:if test="${field==\"post_username\" }">selected="selected"</c:if>>작성자</option>
									</select> 기간 <select class="period" title="기간" onchange="clearDate()">
										<option value="total" <c:if test="${period==\"total\" }">selected="selected"</c:if>>전체</option>
										<option value="week" <c:if test="${period==\"week\" }">selected="selected"</c:if>>1주</option>
										<option value="month" <c:if test="${period==\"month\" }">selected="selected"</c:if>>1개월</option>
										<option value="year" <c:if test="${period==\"year\" }">selected="selected"</c:if>>1년</option>
										<option value="custom" <c:if test="${period==\"custom\" }">selected="selected"</c:if>>직접 입력</option>
									</select> <input type="text" class="sDate" name="sDate" 
										onchange="day_check()" readonly="true" <c:if test="${sDate!=null }"> value=${sDate }</c:if> /> <label for="option2_1">부터</label> <input
										type="text" class="eDate" name="eDate" onchange="day_check()" readonly="true" <c:if test="${sDate!=null }">value=${eDate }</c:if> />
									<label for="option2_2">까지</label> 
									<input type="hidden" id="researchQuery" value="${expression }" /> 
									<input type="hidden" id="researchField" value="${researchField }" />
									<button class="btn_reset" onclick="apply()">
										<span>적용</span>
									</button>
								</dt>
							</dl>
						</li>
					</ul>

				</div>
				<!-- list_type1 -->


				<div class="mar_top50 hei_type1">
					<!-- 포럼 -->
					<p class="line_type1"></p>
					<span class="txt_bold"> <img
						src="${contextPath}/resources/images/searchBar/btn_type3_arr_rgt.gif"
						alt="포럼" /> 포럼
					</span>
					<p class="line_type2"></p>


					<ul class="list_type5">
						<c:forEach var="scd" items="${scdList }" varStatus="status">
							<li>
								<dl>
									<dt>
										<span class="bu_divi">${scd.postId }</span> <span
											class="bu_divi">[${scd.parentForumName }]</span> <a
											href="${contextPath}/forumDB/detailPage?topic_id=${scd.topicId }">${scd.hlPostSubject }</a>
										<span> (유사도 :${scd.score })</span>
									</dt>

									<dd>
										<span class="bu_divi none_pl">작성자 : ${scd.postUsername }</span>
										<a><span>작성일 : ${scd.postDate }</span></a>
									</dd>
									<dd>
										<span class="bu_divi none_pl">카테고리 : ${scd.forumName }</span>
									</dd>

									<dd class="desc">${scd.hlPostText }</dd>
									<dd>
										<span class="bu_divi none_pl">첨부파일수 :
											${scd.postAttachment }</span> <br> <br> <br>
									</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 포럼 -->


				<div id="page" class="page">
					<jsp:include page="page.jsp"></jsp:include>
				</div>

			</div> <!-- t_content 포럼 -->

		</li>
		<li <c:if test="${category==46 }">class="on"</c:if>>
			<p class="tab" id="46">다운로드 및 Q&amp;A</p>
			<div class="t_content">
				<!-- t_content 다운로드 및 Q&amp;A -->

				<div class="list_type1">
					<!-- list_type1 -->
					<ul>
						<li>
							<dl>
								<dt>
									<span class="bold"> <c:choose>
											<c:when test="${total <= 0}">
        										검색 결과가 없습니다.
    										</c:when>
											<c:otherwise>
        									 	총 ${total } 건을 검색하였습니다.
    										</c:otherwise>
										</c:choose>
									</span>
								</dt>
								<dt>
									정렬 <select class="sort" title="정렬">
										<option value="score" <c:if test="${sort_field==\"score\" }">selected="selected"</c:if>>유사도순</option>
										<option value="post_time" <c:if test="${sort_field==\"post_time\" }">selected="selected"</c:if>>최신순</option>
									</select> 범위 <select class="range" title="범위">
										<option value="all" <c:if test="${field==\"all\" }">selected="selected"</c:if>>전체</option>
										<option value="post_subject" <c:if test="${field==\"post_subject\" }">selected="selected"</c:if>>제목</option>
										<option value="post_text" <c:if test="${field==\"post_text\" }">selected="selected"</c:if>>본문</option>
										<option value="post_username" <c:if test="${field==\"post_username\" }">selected="selected"</c:if>>작성자</option>
									</select> 기간 <select class="period" title="기간" onchange="clearDate()">
										<option value="total" <c:if test="${period==\"total\" }">selected="selected"</c:if>>전체</option>
										<option value="week" <c:if test="${period==\"week\" }">selected="selected"</c:if>>1주</option>
										<option value="month" <c:if test="${period==\"month\" }">selected="selected"</c:if>>1개월</option>
										<option value="year" <c:if test="${period==\"year\" }">selected="selected"</c:if>>1년</option>
										<option value="custom" <c:if test="${period==\"custom\" }">selected="selected"</c:if>>직접 입력</option>
									</select> <input type="text" class="sDate" name="sDate" 
										onchange="day_check()" readonly="true" <c:if test="${sDate!=null }"> value=${sDate }</c:if> /> <label for="option2_1">부터</label> <input
										type="text" class="eDate" name="eDate" onchange="day_check()" readonly="true" <c:if test="${sDate!=null }">value=${eDate }</c:if> />
									<label for="option2_2">까지</label> 
									<input type="hidden" id="researchQuery" value="${expression }" /> 
									<input type="hidden" id="researchField" value="${researchField }" />
									<button class="btn_reset" onclick="apply()">
										<span>적용</span>
									</button>
								</dt>
							</dl>
						</li>
					</ul>

				</div>
				<!-- list_type1 -->


				<div class="mar_top50 hei_type1">
					<!-- 다운로드 및 Q&amp;A -->
					<p class="line_type1"></p>
					<span class="txt_bold"> <img
						src="${contextPath}/resources/images/searchBar/btn_type3_arr_rgt.gif"
						alt="다운로드 및 Q&amp;A" /> 다운로드 및 Q&amp;A
					</span>
					<p class="line_type2"></p>


					<ul class="list_type5">
						<c:forEach var="scd" items="${scdList }" varStatus="status">
							<li>
								<dl>
									<dt>
										<span class="bu_divi">${scd.postId }</span> <span
											class="bu_divi">[${scd.parentForumName }]</span> <a
											href="${contextPath}/forumDB/detailPage?topic_id=${scd.topicId }">${scd.hlPostSubject }</a>
										<span> (유사도 :${scd.score })</span>
									</dt>

									<dd>
										<span class="bu_divi none_pl">작성자 : ${scd.postUsername }</span>
										<a><span>작성일 : ${scd.postDate }</span></a>
									</dd>
									<dd>
										<span class="bu_divi none_pl">카테고리 : ${scd.forumName }</span>
									</dd>

									<dd class="desc">${scd.hlPostText }</dd>
									<dd>
										<span class="bu_divi none_pl">첨부파일수 :
											${scd.postAttachment }</span> <br> <br> <br>
									</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- 다운로드 및 Q&amp;A -->


				<div id="page" class="page">
					<jsp:include page="page.jsp"></jsp:include>
				</div>
			</div> <!-- t_content 다운로드 및 Q&amp;A -->
		</li>
	</ul>

</div>
<!-- tab_type1 -->
