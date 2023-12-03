<%@ page import="fr.cda.metier.annonce.Annonce" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<% String ctxPath = request.getContextPath(); %>
<head>
    <title>Les Maisons</title>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="<%= ctxPath %>/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link href="<%= ctxPath %>/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="<%= ctxPath %>/assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

</head>

<body>
<a class="btn btn-outline-dark position-fixed end-0 p-2 fixed-btn mb-5 bg-light top-50 z-3" href="tel:+33257877185"><i class="bi bi-telephone-fill"></i></a>
<a class="btn btn-outline-dark position-fixed end-0 p-2 fixed-btn mt-5 bg-light top-50 z-3" href="mailto:contact@simplyahouse.com" target="_blank"><i class="bi bi-envelope"></i></a>
<header id="header">
    <nav class="navbar navbar-expand-md navbar-dark">
        <a href="${pageContext.request.contextPath}/accueil" class="navbar-brand px-3"><img src="<%= ctxPath %>/assets/images-simply/Logo.png" alt="">
        </a>
        <button class="navbar-toggler px-4" type="button" data-bs-toggle="collapse" data-bs-target="#navbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbar">
            <ul class="navbar-nav px-3">
                <li class="nav-item text-center"><a href="${pageContext.request.contextPath}/accueil"
                                                    class="nav-link text-white fs-5">Accueil</a></li>
                <li class="nav-item text-center"><a href="${pageContext.request.contextPath}/apropos" class="nav-link text-white fs-5">A&nbsp;Propos</a>
                </li>
                <li class="nav-item text-center active"><a href="${pageContext.request.contextPath}/lesmaisons" class="nav-link text-white fs-5">Nos&nbsp;Maisons</a></li>
                <li class="nav-item text-center"><a href="${pageContext.request.contextPath}/contact"
                                                    class="nav-link text-white fs-5">Contact</a></li>
            </ul>
        </div>
    </nav>
</header>

<main>
    <div class="container">
        <div class="row text-center">
            <div class="col pt-5">
                <h2 class="pb-3">Simply A House: Toutes les Maisons</h2>
                <p>Que votre choix se porte sur une <span class="fw-bold">maison traditionnelle</span> ou sur une <span class="fw-bold">maison contemporaine</span>, notre équipe expérimentée, composée d’un responsable qualité et de technico-commerciaux, est là pour vous accompagner dans votre projet.</p>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row text-center">
            <div class="col pt-3 pb-3">
                <h3 class="fw-bold">Choisissez votre maison</h3>
            </div>
        </div>
        <div class="col-12 input-group mb-3 justify-content-evenly bg-secondary p-2">
            <div class="col-12 col-md-2 my-1">
                <input type="text" id="location" class="form-control rounded-0" placeholder="Ville, Code Postal, Département" aria-label="Rechercher par localisation">
            </div>
            <div class="col-12 col-md-2 my-1">
                <input type="text" id="type" class="form-control rounded-0" placeholder="Tous types" aria-label="Rechercher par type">
            </div>
            <div class="col-12 col-md-2 my-1">
                <input type="number" id="pricemin" class="form-control rounded-0" placeholder="€Prix min" aria-label="Prix minimum">
            </div>
            <div class="col-12 col-md-2 my-1">
                <input type="number" id="pricemax" class="form-control rounded-0" placeholder="€Prix max" aria-label="Prix maximum">
            </div>
        </div>
            <div class="container pt-3">
                <div class="card-group">
                    <% for (Annonce annonce : (List<Annonce>) request.getSession().getAttribute("annonceList")) {
                        System.out.println(annonce.getPrix());
                    %>
                    <div class="col-xl-4 col-md-6 px-3 pb-5">
                        <div class="card h-100">
                            <img src="<%= annonce.getSite() %>" class="card-img-top card-picture" alt="Annonce Image">
                            <p class="card-price position-absolute bg-danger p-1 text-center fw-bold"><%= Math.round(annonce.getPrix()) %> €</p>
                            <div class="card-body">
                                <h5 class="card-title fw-bold"><%= annonce.getType() %></h5>
                                <p class="card-text"><%= annonce.getDescription() %></p>
                                <p class="card-text"><%= Math.round(annonce.getSurface()) %>m²</p>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
    </div>
</main>
<%@include file="footer.jsp"%>
<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
</script>
</body>

</html>