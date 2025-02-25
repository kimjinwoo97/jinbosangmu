<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/include/incAdminHead.jsp"></jsp:include>

<jsp:include page="/include/incAdminTop.jsp"></jsp:include>

<!-- Content Row -->
<jsp:useBean id="noticeDto"
   scope="request"
   class="jbsm.user.notice.dto.NoticeDto"/>
   
<div class="row">

	<div class="col-xl-12 col-lg-12">
		<div class="card shadow mb-4">
			<!-- Card Header - Dropdown -->
			<div
				class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary font_size_20">
					호텔 변경
				</h6>
				<div class="dropdown no-arrow"></div>
			</div>

			        <div class="mt-3">
			
		</div>                                 
                                
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class='card mb-4'>
          
        <form action='modify' method='post'>  
        	<input type='hidden' name='hotelNo' id='hotelNo'
								value='${hotelDto.hotelNo}'>                                              
			<table class="table">
				<thead>
					<tr style='background: #f6f6f6;'>
						<th class='w-25' scope="col">호텔 이름</th>
					</tr>
				</thead>
				<tbody >
	
					<tr id="ntSecondTr">
						<td>
							<input type='text' name='hotelName' id='hotelName'
								value='${hotelDto.hotelName}'>
						</td>
					</tr>
					
					<tr style='background: #f6f6f6;'>
						<th class='w-25' scope="col">호텔 등급</th>
					</tr>
					
					<tr id="ntSecondTr">
						<td>
							<input type='text' name='hotelClass' id='hotelClass'
								value='${hotelDto.hotelClass}'>
						</td>
					</tr>
					
					<tr style='background: #f6f6f6;'>
						<th class='w-25' scope="col">전화번호</th>
					</tr>
					
					<tr id="ntSecondTr">
						<td>
							<input type='text' name='hotelPhone' id='hotelPhone'
								value='${hotelDto.hotelPhone}'>
						</td>
					</tr>
					
					<tr style='background: #f6f6f6;'>
						<th class='w-25' scope="col">주소</th>
					</tr>
					
					<tr id="ntSecondTr">
						<td>
							<input type='text' name='hotelAddr' id='hotelAddr'
								value='${hotelDto.hotelAddr}'>
						</td>
					</tr>
	
				</tbody>
			</table>
		
		<div class='text-center'>
			<input type='submit' class='btn btn-secondary' value='변경'>
			<input type='reset' class='btn btn-secondary' value='취소'>
		</div>
		
		</form>
        </div>                                                                                                                                  

			</div>
		</div>
	</div>

</div>

<form action='${pageContext.request.contextPath}/admin/delete'
	name='deleteForm' id='deleteForm' method='post'
	onSubmit='return false;'>
	<input type='hidden' id='deleteNo' name='deleteNo' value=''>
</form>

<jsp:include page="/include/incAdminFooter.jsp"></jsp:include>

<jsp:include page="/include/incAdminClose.jsp"></jsp:include>