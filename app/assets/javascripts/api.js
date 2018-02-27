/* test api client side interface
**/
var api = {
  
  /* get attribute
  **/
  get_attribute: function(id) {
    $.ajax({
      url: "http://bobtrade-callancarr.c9users.io/api/json_attribute?id=" + id,
      success: function(data) {
        console.log(data);
      },
      dataType: "json"
    });
    return true
  }
}