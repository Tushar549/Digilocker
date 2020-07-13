/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function showX(param_div_id) {
    document.getElementById('CriteriaX').innerHTML = document.getElementById(param_div_id).innerHTML;
    document.getElementById('CriteriaX').style.backgroundColor = "#28a745";
    document.getElementById('colorX').style.backgroundColor = "#28a745";
    }
function showXii(param_div_id) {
    document.getElementById('CriteriaXii').innerHTML = document.getElementById(param_div_id).innerHTML;
    document.getElementById('CriteriaXii').style.backgroundColor = "#28a745";
    document.getElementById('colorXii').style.backgroundColor = "#28a745";
    
  }
function showBtech(param_div_id) {
    document.getElementById('CriteriaBtech').innerHTML = document.getElementById(param_div_id).innerHTML;
    document.getElementById('CriteriaBtech').style.backgroundColor = "#28a745";
    document.getElementById('colorBtech').style.backgroundColor = "#28a745";
    
  }



$('.inp').each(function() {
    var default_value = this.value;
    $(this).focus(function() {
        if(this.value == default_value) {
            this.value = '';
        }
    });
    $(this).blur(function() {
        if(this.value == '') {
            this.value = default_value;
        }
    });
});


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$("#generateSearch").click(function(){
    $("#searchResultDiv").show();
});



$("#generateSearchResult").click(function(){

var defaultData = [
  { firstName: 'Kumar',	lastName: 'Shivay',	dateOfBirth: '11/03/1998',	gender:'male',	email:'krshivay08@dbz.xz',	branch:'CSE',	joiningYear:2017  },
  { firstName: 'Kumar',	lastName: 'Santosh',	dateOfBirth: '02/07/1998',	gender:'male',	email:'santosh98kr@dbz.xz',	branch:'CSE',	joiningYear:2017  },
  { firstName: 'Kumar',	lastName: 'Atulit',	dateOfBirth: '25/11/1997',	gender:'male',	email:'songoku@dbz.xz',	branch:'CSE',	joiningYear:2017  }
];

var dom = {
  $data: $('#defaultData'),
  $table: $('#searchDyanmicTable')
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

});

$("#generateSearch").click(function(){
  $("#searchResultDiv").show();
   $('html,body').animate({
        scrollTop: $("#searchResultDiv").offset().top},
        'slow');
  $("generateSearch").disable();
});
