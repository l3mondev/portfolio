<style lang="scss">
  @use '$lib/styles/abstracts/variables' as *;

  .hero {
    position: relative;
    margin-left: -$spacing-5;
    margin-right: -$spacing-5;
    background-color: $color-primary;
  }

  .hero__title {
    padding: $spacing-7 $spacing-5 0;
    margin-bottom: 0;
    color: $color-background;
    position: relative;
  }

  .hero__role:before {
    content: '';
    display: block;
    width: 10px;
    height: 10px;
    background-color: $color-accent;
    margin: $spacing-4 0 $spacing-4 $spacing-4;
  }

  .hero__tagline {
    display: block;
    text-align: center;
    color: $color-text-secondary;
    padding: $spacing-6;
    margin-bottom: 0;
    font-weight: var(--font-weight-medium);
    font-size: var(--font-size-base);
    background-color: $color-background;
    border-bottom: 1px solid $color-border;
  }

  .hero__tagline .google-letters {
    display: inline-flex;
  }

  .hero__tagline .google-g {
    color: #4285f4; /* blue */
  }

  .hero__tagline .google-o1 {
    color: #ea4335; /* red */
  }

  .hero__tagline .google-o2 {
    color: #fbbc05; /* yellow */
  }

  .hero__tagline .google-l {
    color: #34a853; /* green */
  }

  .hero__tagline .google-e {
    color: #ea4335; /* red */
  }

  .hero__actions {
    display: flex;
    gap: $spacing-4;
    margin: $spacing-7 $spacing-5;
  }
</style>

<script lang="ts">
  let title = 'Jarosław Zdyb';
  let role = 'Front-end Developer';
  let secondary = '& SEO Specialist';
  let taglineLine1 = 'Buduję strony,';
  let taglineLine2 = 'które lubią ludzie — i ';
</script>

<section class="hero">
  <h1 class="hero__title">
    {title} <br /><span class="hero__role">{role}</span> <br />{secondary}
  </h1>
  <div class="hero__actions">
    <a
      href="/cv.pdf"
      download="Jaroslaw-Zdyb-CV.pdf"
      class="btn btn--primary"
      rel="noopener"
      aria-label="Pobierz CV w formacie PDF"
    >
      Pobierz CV
    </a>
    <a href="/cv" class="btn btn--secondary" aria-label="Zobacz CV na stronie"> Zobacz CV </a>
  </div>
  <p class="hero__tagline">
    <span>„</span>{taglineLine1}
    <br />
    {taglineLine2}
    <span class="google-letters">
      <span class="google-letter google-g">G</span>
      <span class="google-letter google-o1">o</span>
      <span class="google-letter google-o2">o</span>
      <span class="google-letter google-g">g</span>
      <span class="google-letter google-l">l</span>
      <span class="google-letter google-e">e </span>
    </span>
    <span>”</span>
  </p>
</section>
