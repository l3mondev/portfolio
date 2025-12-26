<style lang="scss">
  @use '$lib/styles/abstracts/variables' as *;

  .logo-link {
    display: flex;
    align-items: center;
    font-size: var(--font-size-lg);
    letter-spacing: $letter-spacing-wide;
    font-weight: $font-weight-bold;
    font-family: $font-family-heading;
    color: $color-primary-dark;
  }

  .logo-link__img {
    width: 32px;
    height: 32px;
    margin-right: $spacing-4;
  }

  .logo-link__dot {
    color: $color-accent;
    display: inline;
  }
</style>

<script lang="ts">
  import logo from '$lib/assets/logo.svg';
</script>

<a href="/" class="logo-link" aria-label="Home">
  <img src={logo} class="logo-link__img" alt="Logo" />zdyb<span class="logo-link__dot">.</span>dev
</a>
