function save_note() {
  var elem = $("input[name='note[body]']");
  var lastNote = elem.val();
  window.setInterval( function() {
    var new_note = elem.val();
    if (new_note !== lastNote) {
      $('#save').click();
      lastNote = new_note;
    }
  }, 3000);
}

save_note();
