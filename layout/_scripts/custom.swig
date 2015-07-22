<script type="text/javascript" src="{{ url_for(theme.vendors) }}/blast-text/jquery.blast.min.js"></script>
<script type="text/javascript">
  $("#motto")
  // Blast the text apart by word.
  .blast({ delimiter: "character" })
  // Fade the words into view using Velocity.js.
  .velocity("transition.fadeIn", { 
  display: null,
  duration: 3250,
  stagger: 100,
  delay: 400
  });
</script>