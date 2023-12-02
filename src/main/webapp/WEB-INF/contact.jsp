<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<% String ctxPath = request.getContextPath(); %>
<head>
    <title>Contact</title>
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
            <ul class="navbar-nav">
                <li class="nav-item text-center"><a href="${pageContext.request.contextPath}/accueil"
                                                    class="nav-link text-white fs-5">Accueil</a></li>
                <li class="nav-item text-center"><a href="${pageContext.request.contextPath}/apropos" class="nav-link text-white fs-5">A&nbsp;Propos</a>
                </li>
                <li class="nav-item text-center"><a href="${pageContext.request.contextPath}/lesmaisons" class="nav-link text-white fs-5">Nos&nbsp;Maisons</a></li>
                <li class="nav-item text-center active"><a href="${pageContext.request.contextPath}/contact"
                                                    class="nav-link text-white fs-5">Contact</a></li>
            </ul>
        </div>
    </nav>
</header>
<main>
    <section>
        <div class="container text-center pt-5">
            <h1>Contacter Simply A House</h1>
            <div class="row pt-5">
                <div class="col">
                    <p class="fs-5">Pour toute demande d'information ou de prise de rendez-vous, vous pouvez nous adresser votre demande en remplissant le formulaire de contact ci-dessous.

                        Le conseiller de votre secteur géographique, interlocuteur unique, vous proposera un accompagnement unique et personnalisé tout au long de votre projet.</p>
                </div>
                <div class="d-none d-md-inline-block offset-3 col-2">
                    <img src="<%= ctxPath %>/assets/images-simply/visuel-contact.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <form class="mb-5">
                <div class="col-12 col-md-4">
                    <div class="mb-5">
                        <input type="text" class="form-control" id="nom" placeholder="Nom">
                    </div>
                    <div class="mb-5">
                        <input type="email" class="form-control" id="email" placeholder="Email">
                    </div>
                    <div class="mb-5">
                        <input type="tel" class="form-control" id="telephone" placeholder="Téléphone">
                    </div>

                </div>
                <h5 class="mt-3 fw-bold">Région</h5>
                <div class="col-12 col-md-4 d-flex justify-content-between">

                    <div class="mt-3 form-check">
                        <input class="form-check-input" type="checkbox" value="" id="check1">
                        <label class="form-check-label" for="check1">
                            Nord
                        </label>
                    </div>
                    <div class="mt-3 form-check">
                        <input class="form-check-input" type="checkbox" value="" id="check2">
                        <label class="form-check-label" for="check2">
                            Sud
                        </label>
                    </div>
                    <div class="mt-3 form-check">
                        <input class="form-check-input" type="checkbox" value="" id="check3">
                        <label class="form-check-label" for="check3">
                            Est
                        </label>
                    </div>
                    <div class="mt-3 form-check">
                        <input class="form-check-input" type="checkbox" value="" id="check4">
                        <label class="form-check-label" for="check4">
                            Ouest
                        </label>
                    </div>
                </div>
                <h5 class="mt-4 fw-bold">Votre projet</h5>
                <div class="col-12 col-md-4 d-flex justify-content-between">

                    <div class="mt-3 form-check">
                        <input class="form-check-input" type="checkbox" value="" id="check5">
                        <label class="form-check-label" for="check5">
                            Maison
                        </label>
                    </div>
                    <div class="mt-3 form-check">
                        <input class="form-check-input" type="checkbox" value="" id="check6">
                        <label class="form-check-label" for="check6">
                            Villa
                        </label>
                    </div>
                    <div class="mt-3 form-check">
                        <input class="form-check-input" type="checkbox" value="" id="check7">
                        <label class="form-check-label" for="check7">
                            Domaine
                        </label>
                    </div>
                </div>
                <div class="col-12 mt-5">
                    <div class="mb-4">
                        <h5 class="fw-bold">Votre Message</h5>
                        <textarea class="form-control" id="form-textarea" rows="4"></textarea>
                    </div>
                </div>
                <button class="btn btn-outline-dark align-self-center px-5 custom-btn-form" type="submit" class="btn btn-primary">Envoyer</button>
            </form>
        </div>
    </section>
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