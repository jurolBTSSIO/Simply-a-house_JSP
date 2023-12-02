<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<% String ctxPath = request.getContextPath(); %>
<head>
    <title>A Propos</title>

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
                <li class="nav-item text-center active"><a href="${pageContext.request.contextPath}/apropos" class="nav-link text-white fs-5">A&nbsp;Propos</a>
                </li>
                <li class="nav-item text-center"><a href="${pageContext.request.contextPath}/lesmaisons" class="nav-link text-white fs-5">Nos&nbsp;Maisons</a></li>
                <li class="nav-item text-center"><a href="${pageContext.request.contextPath}/contact"
                                                         class="nav-link text-white fs-5">Contact</a></li>
            </ul>
        </div>
    </nav>
</header>
<main>
    <section class="mt-5">
        <div class="container">
            <h1 class="text-center">Simply A House : Une équipe d’experts</h1>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laborum ex doloremque fugit et earum inventore deserunt in voluptatibus alias voluptatem itaque, delectus placeat atque quos officia quas hic est dolor sed odio iste officiis sequi quo. Deserunt magnam doloribus recusandae!</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae, consequuntur aspernatur rem minus, esse vero voluptatem dolor iste non neque reiciendis ratione modi vitae laborum facilis exercitationem a atque molestias.</p>
        </div>

    </section>
    <section id="accordeon" class="container">
        <div class="accordion" id="accordionExample">
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button bg-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Nos engagements et garanties
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <img src="/images-simply/label.jpg" style="float: right;" alt="">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt praesentium quod non tempore iure commodi culpa maiores corrupti iusto quis ullam tenetur, rem hic voluptatem natus distinctio sint totam adipisci sed dolorum. Obcaecati ipsam saepe nostrum mollitia aperiam unde placeat explicabo inventore facilis ad iste suscipit, sed eius quam? Et corporis veritatis modi voluptatem blanditiis, hic laudantium enim veniam possimus?</p>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button bg-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                        Un rapport qualité/prix inégalé
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam nihil dolorem assumenda, ut quasi sit cum illo. Explicabo dolore praesentium ut necessitatibus minus beatae tempore sunt, qui repudiandae quod, eos quas tempora rem! Ut atque perferendis eum molestias eius omnis excepturi quod tenetur, aspernatur deleniti obcaecati ipsa illo maiores temporibus! Perferendis laudantium quo distinctio consectetur minus explicabo maxime natus molestiae?</p>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button bg-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
                        Une équipe investie et disponible
                    </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut sint voluptatem iure atque rem quasi quo, porro a illum officia blanditiis, dolorem sunt totam beatae consequatur ipsa aliquam! Cum, illum porro non rerum atque nulla omnis at maxime ea, recusandae nihil suscipit corrupti vero architecto blanditiis error impedit illo consequuntur ducimus cumque, sapiente eveniet sit magnam! Saepe possimus fuga earum!</p>
                    </div>
                </div>
            </div>

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