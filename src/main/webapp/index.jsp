<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/landing_page.style.css" />
  <link href="font/DMSans-VariableFont_opsz,wght.ttf" rel="stylesheet"/>

  <title>MovieDB - Movie Database</title>
  <link rel="icon" href="images/logo.png"/>
</head>
<body>
<header>
  <nav class="navbar">
    <div class="navbar__brand">
      <img
              src="images/logo.png"
              alt="logo"
              class="brand__logo"
      />
    </div>

    <div class="nav__item">
      <a href="/login.jsp"><button class="signin__button">Sign in </button></a>
    </div>
  </nav>
</header>

<main>
  <section class="hero">
    <div class="hero__bg__image__container">
      <img
              src="images/background.webp"
              alt="BG hero image"
              class="hero__bg__image"
      />
    </div>
    <div class="hero__bg__overlay"></div>

    <div class="hero__card">
      <h1 class="hero__title">
        Welcome to MovieDB.<br />
        Millions of movies, TV shows and people to discover.
      </h1>
      <br>
      <p class="hero__subtitle">The MovieDB is a movie database. Every piece of data has been added by us.
        <br>You can see listed movies details.
      </p>
      <p class="hero__description">
        Ready to start your journey? Click the button below.
      </p>

      <div class="email__form__container">
        <a href="register.jsp"><button class="primary__button">
          Get Started <i class="fal fa-chevron-right"></i>
        </button></a>
      </div>
    </div>
  </section>
  </main>
</body>
</html>