# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
    tmpl = '<tr><td><input name="registration[students_names][]" type="text" value=""></td>
        <td>
          <select name="registration[students_voice_parts][]">
            <option value="">Please select</option>
            <option value="Tenor 1">Tenor 1</option>
            <option value="Tenor 2">Tenor 2</option>
            <option value="Baritone">Baritone</option>
            <option value="Bass">Bass</option>
          </select>
        </td></tr>'

    $('#add_new_student').on 'click', ->
      $('#student_info tbody').append(tmpl)