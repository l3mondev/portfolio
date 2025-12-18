<script lang="ts">
  import favicon from '$lib/assets/favicon.svg';
  import '../styles/main.scss';

  let { children } = $props();
</script>

<svelte:head>
  <title>Portfolio</title>
  <link rel="icon" href={favicon} />
</svelte:head>

{@render children()}
