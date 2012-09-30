# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  if(/\/register/.test(document.location.pathname))
    
    tmpl = '<tr><td><input name="registration[students_names][]" type="text" value=""></td>
        <td>
          <select name="registration[students_voice_parts][]">
            <option value="">Please select</option>
            <option value="tenor1">Tenor 1</option>
            <option value="tenor2">Tenor 2</option>
            <option value="baritone">Baritone</option>
            <option value="bass">Bass</option>
          </select>
        </td></tr>'
    
    $('#add_new_student').on 'click', ->
      $('#student_info tbody').append(tmpl)