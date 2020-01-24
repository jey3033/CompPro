  <section id="about">
    <div class="container">
      <% loop $Info %>
      <% if First %>
        <header class="section-header">
          <h3>$InfoTitle</h3>
          <p>$Description</p>
        </header>
        <div class="row about-cols">
      <% else %>
        <div class="col-md-4 wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
          <div class="about-col">
            <div class="img">
              $Photo.Fit(350,205)
              <div class="icon"><i class="ion-android-film"></i></div>
            </div>
            <h2 class="title">$InfoTitle</h2>
            <p>$Description.LimitSentences(3)</p>
          </div>
        </div>
      <% end_if %>
      <% end_loop %>
      </div>
    </div>
  </section>

  <hr>

  <section id="news">
    <div class="container">
      <header class="section-header">
    	<H3><a href="news">News</a></H3>
      </header>
      <div class="row about-cols">
    	<% loop $News %>
        <div class="col-md-4 wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
    		  <div class="about-col">
    			<h2 class="title">$Title</h2>
    			<p>$Description.FirstParagraph<a href="news/show/{$ID}">read more</a></p>
        </div>
    		</div>
    	<% end_loop %>
      </div>
    </div>
  </section>