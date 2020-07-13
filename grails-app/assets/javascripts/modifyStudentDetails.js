/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$("#modifyTableSearch").click(function(){
    $("#modifyTableDiv").show();
});


$(".edit").click(function(){
  $(".edit").hide();
  $(".save").show();
});
$(".save").click(function(){
  $(".edit").show();
  $(".save").hide();
});

$("#modifyTableSearch").click(function(){

var defaultData = [
  { firstName: 'Kumar',	lastName: 'Shivay',	dateOfBirth: '11/03/1998',	gender:'male',	email:'krshivay08@dbz.xz',	branch:'CSE',	joiningYear:2017  },
  { firstName: 'Kumar',	lastName: 'Santosh',	dateOfBirth: '02/07/1998',	gender:'male',	email:'santosh98kr@dbz.xz',	branch:'CSE',	joiningYear:2017  },
  { firstName: 'Kumar',	lastName: 'Atulit',	dateOfBirth: '25/11/1997',	gender:'male',	email:'songoku@dbz.xz',	branch:'CSE',	joiningYear:2017  }
];

var dom = {
  $data: $('#defaultData'),
  $table: $('#modifyDyanmicTable')
};

function json2table(json, $table) {
  var cols = Object.keys(json[0]);

  var headerRow = '';
  var bodyRows = '';
  var columnName = Object.keys(defaultData[0]);

  function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1).replace(/([a-z])([A-Z])/g, '$1 $2');
  }
  $table.html('<thead><tr></tr></thead><tbody></tbody>');

  cols.map(function(col) {
    headerRow += '<th>' + capitalizeFirstLetter(col) + '</th>';
  });

  json.map(function(row) {
    bodyRows += '<tr data-id="'+ defaultData.indexOf(row) +'">';

    cols.map(function(colName) {
      bodyRows += '<td data-field="'+ colName +' class="form-control">'+ row[colName]+'</td>';
	  
    });

    bodyRows += '</tr>';
  });

  $table.find('thead tr').append(headerRow);
  $table.find('tbody').append(bodyRows);
}

dom.$data.val(JSON.stringify(defaultData));
json2table(defaultData, dom.$table);

dom.$data.on('input', function() {
  json2table(JSON.parse(dom.$data.val()), dom.$table);
  
});
$(function () {
    $("#modifyDyanmicTable td").click(function (e) {
        e.preventDefault(); // <-- consume event
        e.stopImmediatePropagation();
        
        $this = $(this);

        if ($this.data('editing')) return;  
        
        var val = $this.text();
        
        $this.empty();
        $this.data('editing', true);        
        
        $('<input type="text" class="editfield">').val(val).appendTo($this);
    });

    putOldValueBack = function () {
        $("#modifyDyanmicTable .editfield").each(function(){
            $this = $(this);
            var val = $this.val();
            var td = $this.closest('td');
            td.empty().html(val).data('editing', false);
            
        });
    };

    $(document).click(function (e) {
        putOldValueBack();
    });
});
});



$("#modifyTableSearch").click(function(){
  $("#modifyTableDiv").show();
   $('html,body').animate({
        scrollTop: $("#modifyTableDiv").offset().top},
        'slow');
  $("modifyTableSearch").disable();
});

$('#myModal').on('hidden.bs.modal', function () {
     location.reload();
});

