<%@ page import="fr.cda.metier.annonce.Annonce" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String ctxPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Accueil</title>
    <!-- Required meta tags -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="<%= ctxPath %>/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link href="<%= ctxPath %>/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link href="<%= ctxPath %>/assets/css/style.css" rel="stylesheet">
</head>

<body>
<!-- Telephone Bouton -->
<i id="phoneButton" class="bi bi-telephone-fill position-fixed end-0 p-2 mb-5 bg-light top-50 z-3" data-bs-toggle="tooltip" data-bs-placement="left" title="02.98.86.32.26"></i>

<!-- Email Bouton -->
<i id="emailButton" class="bi bi-envelope position-fixed end-0 p-2 mt-5 bg-light top-50 z-3" data-bs-toggle="modal" data-bs-target="#emailModal"></i>

<!-- Email Modal -->
<div class="modal fade" id="emailModal" tabindex="-1" aria-labelledby="emailModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="emailModalLabel">Nous conctater</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Email Formumaire -->
                <form>
                    <div class="mb-3">
                        <label for="name" class="form-label">Nom</label>
                        <input type="text" class="form-control" id="name" placeholder="Entrez votre nom">
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email </label>
                        <input type="email" class="form-control" placeholder="Entrez votre email">
                    </div>
                    <div class="mb-3">
                        <label for="message" class="form-label">Message</label>
                        <textarea class="form-control" id="message" rows="3" placeholder="Entrez votre message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Envoyer message</button>
                </form>
            </div>
        </div>
    </div>
</div>
<header class="container-fluid">
    <div class="banner-contact row d-none d-md-flex justify-content-end">

        <div class="col-2 d-flex justify-content-around">
            <a class="d-flex justify-content-center py-1" href="https://facebook.com">
                <i class="bi bi-facebook text-black"></i>
            </a>
            <a class="d-flex justify-content-center py-1" href="https://twitter.com">
                <i class="bi bi-twitter text-black"></i>
            </a>
            <a class="d-flex justify-content-center py-1" href="https://linkedin.com">
                <i class="bi bi-linkedin text-black"></i>
            </a>
            <a class="d-flex justify-content-center py-1" href="https://instagram.com">
                <i class="bi bi-instagram text-black"></i>
            </a>
        </div>
        <div class="col-2 d-flex justify-content-center">
            <a class="d-flex justify-content-center text-decoration-none text-black align-items-center py-1" href="tel:+33257877185">
                <i class="bi bi-telephone-fill  text-black"></i><div class=" text-black">&nbsp;02&nbsp;57&nbsp;87&nbsp;71&nbsp;85</div>
            </a>
        </div>
        <div class="col-2 d-flex justify-content-center py-1">
            <!-- Button trigger modal -->
            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                <i class="bi bi-house-door-fill"></i>&nbsp;Suivre&nbsp;mon&nbsp;projet
            </button>

            <!-- Modal -->
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Se Connecter</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <!-- Login Form -->
                            <form>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="email" placeholder="Entrez votre email">
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="password" placeholder="Entrez votre password">
                                </div>
                                <button type="submit" class="btn btn-primary">Se connecter</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <a href="#">Mot de passe oublié</a>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
                            <button type="button" class="btn btn-primary">Créer un compte</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row d-none d-md-block">
        <div class="col gx-0">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%= ctxPath%>/assets/images-simply/slide1.JPG" alt=""></div>
                    <div class="swiper-slide"><img src="<%= ctxPath%>/assets/images-simply/slide2.JPG" alt=""></div>
                    <div class="swiper-slide"><img src="<%= ctxPath%>/assets/images-simply/slide3.JPG" alt=""></div>
                </div>
            </div>
        </div>
    </div>
        <div class="row">
            <div class="col px-0">
                <nav class="navbar navbar-expand-lg navbar-dark">
                    <a href="<%= ctxPath %>/accueil" class="navbar-brand px-3"><img src="<%= ctxPath %>/assets/images-simply/Logo.png" alt="">
                    </a>
                    <button class="navbar-toggler px-4" type="button" data-bs-toggle="collapse" data-bs-target="#navbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-end" id="navbar">
                        <ul class="navbar-nav px-3">
                            <li class="nav-item text-center active"><a href="<%= ctxPath %>/accueil"
                                                    class="nav-link text-white fs-5">Accueil</a></li>
                            <li class="nav-item text-center"><a href="${pageContext.request.contextPath}/apropos" class="nav-link text-white fs-5">A&nbsp;Propos</a>
                            </li>
                            <li class="nav-item text-center"><a href="<%= ctxPath %>/lesmaisons" class="nav-link text-white fs-5">Nos&nbsp;Maisons</a></li>
                            <li class="nav-item text-center"><a href="<%= ctxPath %>/contact"
                                                    class="nav-link text-white fs-5">Contact</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
</header>
    <main>
        <section class="pt-5">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <h2 class="pb-3">Bienvenue Chez Simply A House</h2>
                        <p class="fs-6">La société <strong>Simply A House</strong>, groupement d’agences
                            qui vendent des maisons individuelles ou mitoyennes en <strong>France</strong>, est née de
                            l’ambition, accompagner ses clients dans la réussite d’un des projets les plus importants
                            dans
                            leur vie : l’achat <strong>d’une maison</strong>.</p>
                        <p class="fs-6"><strong>Simply A House</strong> vous accompagne tout au long
                            de votre projet d’acquisition de maison, de la recherche de la réservation jusqu’à la remise
                            des
                            clés.</p>
                    </div>
                    <div class="d-none d-md-block col mx-5"><img src="<%= ctxPath %>/assets/images-simply/bienvenue.JPG" width="250px" style="float: right;" alt="photo de bienvenue">
                    </div>
                </div>
            </div>
        </section>
        <!-- LES ANNONCES -->
        <section class="py-5">
            <div class="container">
                <h3 class="px-3 pb-3
                 fw-bold">Les Dernières Annonces</h3>
                <div class="card-group">
                    <%
                        List<Annonce> annonceList = (List<Annonce>) request.getSession().getAttribute("annonceList");
                        for (int i = 0;i < 8; i++) {
                            if (i == 2) { %>
                    <div class="col-xl-4 col-md-6 px-3 pb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <img src="<%= ctxPath %>/assets/images-simply/FinancerMaison.jpg"  class="card-img" alt="Annonce Image">
                            <div class="card-img-overlay d-flex flex-column py-5 justify-content-center align-items-center">
                                <h2 class="text-center text-white p-5">Comment <br>financer <br>son projet ?</h2>
                                <a id="" class="btn bg-white border-dark" href="#" role="button">+
                                    d'info</a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <% } else if (!annonceList.get(i).getSite().equals("")) { %>

                    <div class="col-xl-4 col-md-6 px-3 pb-5">
                        <div class="card h-100">
                            <img src="<%= annonceList.get(i).getSite() %>" class="card-img-top card-picture" alt="Annonce Image">
                            <div class="card-body">
                                <h5 class="card-title fw-bold"><%= annonceList.get(i).getType() %></h5>
                                <p class="card-text"><%= annonceList.get(i).getDescription() %></p>
                                <p class="card-text"><%= Math.round(annonceList.get(i).getSurface()) %>m²</p>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
                <div class="row text-center pt3">
                    <div class="col"><a href="<%= ctxPath %>/lesmaisons" class="btn border-dark">En voir +</a></div>
                </div>
            </div>
        </section>
    </main>
    <%@include file="footer.jsp"%>
<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".mySwiper", {
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        }
    });
</script>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-vtXRMe3mGCbOeY7l30aIg8H9p3GdeSe4IFlP6G8JMa7o7lXvnz3GFKzPxzJdPfGK" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>
</body>

</html>