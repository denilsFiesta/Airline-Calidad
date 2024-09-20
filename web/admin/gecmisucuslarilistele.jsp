<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file = "header.jsp" %>
<%@ include file = "sidebar.jsp" %>
<%@ include file = "topbar.jsp" %>
<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <span class="m-0 font-weight-bold text-white">Geçmiş Uçuşların Listesi</span>
            <a href="ucusolustur" class="btn btn-dark btn-sm float-right"><i class="fas fa-plus"></i> Uçuş Oluştur</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <style>
                    #dataTable {
                        border-collapse: collapse;
                        width: 100%;
                    }
                
                    #dataTable th, #dataTable td {
                        padding: 8px;
                    }
                </style>
                <table class="table table-bordered" id="dataTable">
                    <thead>
                        <tr>
                            <th id="header-number">#</th>
                            <th id="calcis-noktasi">Kalkış Noktası</th>
                            <th id="varis-noktasi">Varış Noktası</th>
                            <th id="ucus-tarihi">Uçuş Tarih</th>
                            <th id="ucus-saat">Uçuş Saat</th>
                            <th id="sure">Süre</th>
                            <th id="ucus-firmasi">Uçuş Firması</th>
                            <th id="ucustaki-ucak">Uçuştaki Uçak</th>
                            <th id="ucus-ucreti">Uçuş Ücreti</th>
                            <th id="islemler">İşlemler</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th id="header-number">#</th>
                            <th id="kalkis-noktasi">Kalkış Noktası</th>
                            <th id="varis-noktasi">Varış Noktası</th>
                            <th id="ucus-tarihi">Uçuş Tarih</th>
                            <th id="ucus-saat">Uçuş Saat</th>
                            <th id="sure">Süre</th>
                            <th id="ucus-firmasi">Uçuş Firması</th>
                            <th id="ucustaki-ucak">Uçuştaki Uçak</th>
                            <th id="ucus-ucreti">Uçuş Ücreti</th>
                            <th id="islemler">İşlemler</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <c:forEach var="gecmisucusliste" items="${gecmisucusliste}">
                            <tr>
                                <td><c:out value="${gecmisucusliste.ucus_id}" /></td>
                                <td><c:out value="${gecmisucusliste.ucus_kalkis}" /></td>
                                <td><c:out value="${gecmisucusliste.ucus_varis}" /></td>
                                <td><c:out value="${gecmisucusliste.ucus_tarih}" /></td>
                                <td><c:out value="${gecmisucusliste.ucus_saat}" /></td>
                                <td><c:out value="${gecmisucusliste.ucus_sure}" /></td>
                                <td><c:out value="${gecmisucusliste.firma_ad}" /></td>
                                <td><c:out value="${gecmisucusliste.ucak_ad}" /></td>
                                <td><c:out value="${gecmisucusliste.ucus_ucret}" /></td>
                                <td>
                                    <a href="ucussil?id=<c:out value='${gecmisucusliste.ucus_id}' />">
                                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash"></i> Sil</button>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<%@ include file = "footer.jsp" %>