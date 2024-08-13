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
                                    <h6 class="m-0 font-weight-bold text-primary font_size_20">관리자 신규등록</h6>
                                    <div class="dropdown no-arrow">
                                    </div>
                                </div>
                                
                                <form action='${pageContext.request.contextPath}/admin/new' method='post' onsubmit='return newCheck()'>
                                <input type="hidden" id='adminPwS' name='adminPwS' value="" />
                                
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class='card mb-4'>

			<table class='table'>
				<tr>
					<td style='width: 10%; background: #f3f3f3'>관리자 이름</td>
					<td><input type='text' id='adminName' name='adminName'
						class='form-control col-lg-6'></td>
				</tr>
				<tr>
					<td style='background: #f3f3f3'>관리자 이메일</td>
					<td><input type='text' id='adminEmail' name='adminEmail'
						class='form-control col-lg-6'></td>
				</tr>
				<tr>
					<td style='background: #f3f3f3'>관리자 비밀번호</td>
					<td><input type='password' id='adminPw' name='adminPw'
						class='form-control col-lg-6'></td>
				</tr>
			</table>
	
                                    </div>
                                    
			<div class='text-center'>
				<input type='submit' value='등록하기' class='btn btn-secondary'>&nbsp;&nbsp;
				<input type='reset' value='돌아가기' onclick='adminList();' class='btn btn-secondary'>
			</div>                                      
                                                                       
                                </div>
                                
                                </form>
                                
                            </div>
                        </div>
                    
					</div>  
					
  <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.1.1/core.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.1.1/sha256.js"></script>					                       

<jsp:include page="/include/incAdminFooter.jsp"></jsp:include>

<jsp:include page="/include/incAdminClose.jsp"></jsp:include>