<h2 id="publications" style="margin: 2px 0px -15px;">Publications</h2>

<div class="publications">
  <ol class="bibliography">

    {% for link in site.data.publications.main %}
    <li>
      <div class="pub-row">
        <div class="col-sm-3 abbr" style="position: relative; padding-right: 15px; padding-left: 15px;">

          {% if link.image %}
          <img src="{{ link.image | relative_url }}" class="teaser img-fluid z-depth-1" style="width:100%; max-height:140px; object-fit:cover;">
          {% endif %}

        </div>
        <div class="col-sm-9" style="position: relative; padding-right: 15px; padding-left: 20px;">
          <div class="title">
            {% if link.pdf %}
              <a href="{{ link.pdf }}" target="_blank">{{ link.title }}</a>
            {% else %}
              {{ link.title }}
            {% endif %}
          </div>

          <div class="author">
            {{ link.authors }}
          </div>

          <div class="periodical">
            <em>{{ link.conference }}</em>
          </div>

          <div class="links">
            {% if link.pdf %}
            <a href="{{ link.pdf }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">PDF</a>
            {% endif %}

            {% if link.code %}
            <a href="{{ link.code }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Code</a>
            {% endif %}
          </div>
        </div>
      </div>
      <br>
    </li>
    {% endfor %}

  </ol>
</div>
