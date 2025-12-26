<style lang="scss">
  @use '$lib/styles/abstracts/variables' as *;

  .cv-page {
    max-width: 800px;
    margin: 0 auto;
    padding: $spacing-6 $spacing-5;
  }

  .cv-header {
    text-align: center;
    margin-bottom: $spacing-6;
  }

  .cv-section {
    margin-bottom: $spacing-6;
  }

  .cv-section__title {
    font-family: $font-family-heading;
    font-size: var(--font-size-xl);
    font-weight: $font-weight-semibold;
    color: $color-primary;
    margin-bottom: $spacing-4;
    border-bottom: 2px solid $color-accent;
    padding-bottom: $spacing-2;
  }
</style>

<script lang="ts">
  // TODO: Dodaj tutaj treść CV zgodną z PDF
  // Struktura powinna być 1:1 z PDF
</script>

<div class="cv-page">
  <header class="cv-header">
    <h1>Jarosław Zdyb</h1>
    <p>Front-end Developer & SEO Specialist</p>
  </header>

  <section class="cv-section">
    <h2 class="cv-section__title">Doświadczenie</h2>
    <!-- TODO: Dodaj sekcje doświadczenia zgodne z PDF -->
  </section>

  <section class="cv-section">
    <h2 class="cv-section__title">Umiejętności</h2>
    <!-- TODO: Dodaj sekcje umiejętności zgodne z PDF -->
  </section>

  <section class="cv-section">
    <h2 class="cv-section__title">Edukacja</h2>
    <!-- TODO: Dodaj sekcje edukacji zgodne z PDF -->
  </section>
</div>
