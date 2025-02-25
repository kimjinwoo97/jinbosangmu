<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<jsp:include page="/include/incAdminHead.jsp"></jsp:include>

<jsp:include page="/include/incAdminTop.jsp"></jsp:include>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-12 col-lg-12">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary font_size_20">이벤트 신규등록</h6>
                                    <div class="dropdown no-arrow">
                                    </div>
                                </div>
                                
                                <form action='${pageContext.request.contextPath}/admin/event/new' method='post' enctype='multipart/form-data' onsubmit='return newEventCheck()'>
                                
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class='card mb-4'>

			<table class='table'>
				<tr>
					<td style='width: 10%; background: #f3f3f3'>제목</td>
					<td><input type='text' id='eventName' name='eventName' class='form-control col-lg-6'></td>
				</tr>
				<tr>
					<td style='width: 10%; background: #f3f3f3'>시작 일자</td>
					<td>
						<div class="input-group date" id="datepicker">
							<input type="text" class="form-control col-lg-5" id='eventSdate' name='eventSdate'/>
							<span class="input-group-append">
								<span class="input-group-text bg-light d-block">
									<i class="fa fa-calendar"></i>
								</span>
							</span>
						</div>
					</td>
				</tr>
				<tr>
					<td style='width: 10%; background: #f3f3f3'>종료 일자</td>
					<td>
						<div class="input-group date" id="datepicker">
							<input type="text" class="form-control col-lg-5" id='eventEdate' name='eventEdate'/>
							<span class="input-group-append">
								<span class="input-group-text bg-light d-block">
									<i class="fa fa-calendar"></i>
								</span>
							</span>
						</div>
					</td>
				</tr>		
				<tr>
					<td style='width: 10%; background: #f3f3f3'>썸네일 이미지</td>
					<td><input type="file" id='eventTimg' name="eventTimg" class='form-control col-lg-6'></td>
				</tr>
				<tr>
					<td style='width: 10%; background: #f3f3f3'>상세 이미지</td>
					<td><input type="file" id='eventDimg' name="eventDimg" class='form-control col-lg-6'></td>
				</tr>				
			</table>
	
                                    </div>
   
			<div class='text-center'>
				<input type='submit' value='등록하기' class='btn btn-secondary'>&nbsp;&nbsp;
				<input type='reset' value='돌아가기' onclick='eventList();' class='btn btn-secondary'>
			</div>                                      
                                                                       
                                </div>
                                
                                </form>
                                
                            </div>
                        </div>
                    
					</div>  					                       

<jsp:include page="/include/incAdminFooter.jsp"></jsp:include>

<jsp:include page="/include/incAdminClose.jsp"></jsp:include>

<script>
	$(function(){
	  	$('#eventSdate').datepicker({
		    format: 'yyyy-mm-dd',
		    autoclose: true
		});
	  	$('#eventEdate').datepicker({
		    format: 'yyyy-mm-dd',
		    autoclose: true
		});
	});
</script>	