  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title">
          <h2>Iniciar Sesión</h2>
          <p>Iniciar sesi&oacute;n con Facebook:</p>
          <fb:login-button perms="email,user_birthday"></fb:login-button>
          <script>
          $(function() {
            $.ajax({
              url: '//connect.facebook.net/es_ES/all.js',
              dataType: 'script',
              cache: true,
             success: function() {
               FB.init({
                 appId: '242488766758618',
                 xfbml: true
               });
               FB.Event.subscribe('auth.authResponseChange', function(response) {
                    if (response && response.status == 'connected') {
                      alert('david');
                      FB.api('/me', function(response) {
                        alert('Nombre: ' + data.name);
                      });
                    }
                  });
                }
              });
            });

          FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
          });
          function checkLoginState() {
            FB.getLoginStatus(function(response) {
              statusChangeCallback(response);
            });
          }
          </script>
          <div class="fb-login-button" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="true" data-use-continue-as="true" data-width=""></div>
          <fb:login-button 
            scope="public_profile,email"
            onlogin="checkLoginState();">
          </fb:login-button>

          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae saepe explicabo et officia deserunt, quasi provident delectus. Mollitia quibusdam dolore ipsum illo repellat praesentium nostrum, beatae sint incidunt, magni perferendis.</p>
        </div>

      </div>
    </section><!-- End About Section -->

  </main><!-- End #main -->