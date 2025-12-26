<script lang="ts">
  import Header from '$lib/components/molecules/Header.svelte';
  import '$lib/styles/main.scss';

  let { children } = $props();
</script>

<svelte:head>
  <title>Portfolio</title>
  <link rel="icon" href="/favicon.ico?v=1" />
  <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png?v=1" />
  <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png?v=1" />
  <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png?v=1" />
  <link rel="manifest" href="/site.webmanifest?v=1" />
  <meta name="theme-color" content="#ffffff" />
</svelte:head>

<Header />

{@render children()}
