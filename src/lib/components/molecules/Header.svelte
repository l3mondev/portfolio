<style lang="scss">
  @use '$lib/styles/abstracts/variables' as *;

  header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: $spacing-6 0;
  }
</style>

<script lang="ts">
  import LogoLink from '$lib/components/atoms/LogoLink.svelte';
  import Tagline from '$lib/components/atoms/Tagline.svelte';
</script>

<header>
  <LogoLink />
  <Tagline />
</header>
