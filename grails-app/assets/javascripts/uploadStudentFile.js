/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function Upload() {
    
        //Reference the FileUpload element.
        var fileUpload = document.getElementById("fileUpload");
 
        //Validate whether File is valid Excel file.
        var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.xls|.xlsx)$/;
        if (regex.test(fileUpload.value.toLowerCase())) {
            if (typeof (FileReader) != "undefined") {
                var reader = new FileReader();
 
                //For Browsers other than IE.
                if (reader.readAsBinaryString) {
                    reader.onload = function (e) {
                        ProcessExcel(e.target.result);
                    };
                    reader.readAsBinaryString(fileUpload.files[0]);
                } else {
                    //For IE Browser.
                    reader.onload = function (e) {
                        var data = "";
                        var bytes = new Uint8Array(e.target.result);
                        for (var i = 0; i < bytes.byteLength; i++) {
                            data += String.fromCharCode(bytes[i]);
                        }
                        ProcessExcel(data);
                    };
                    reader.readAsArrayBuffer(fileUpload.files[0]);
                }
            } else {
                alert("This browser does not support HTML5.");
            }
        } else {
            alert("Please upload a valid Excel file.");
        }
    };
    function ProcessExcel(data) {
        //Read the Excel File data.
        var workbook = XLSX.read(data, {
            type: 'binary'
        });
 
        //Fetch the name of First Sheet.
        var firstSheet = workbook.SheetNames[0];
 
        //Read all rows from First Sheet into an JSON array.
        var excelRows = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[firstSheet]);
 
        //Create a HTML Table element.
        var table = document.createElement("table");
        table.border = "1";
 
        //Add the header row.
        var row = table.insertRow(-1);
 
        //Add the header cells.
        var headerCell = document.createElement("TH");
        headerCell.innerHTML = "Roll No";
        row.appendChild(headerCell);
 
        headerCell = document.createElement("TH");
        headerCell.innerHTML = "First Name";
        row.appendChild(headerCell);
                
        headerCell = document.createElement("TH");
        headerCell.innerHTML = "Last Name";
        row.appendChild(headerCell);
        
        headerCell = document.createElement("TH");
        headerCell.innerHTML = "Date Of Birth";
        row.appendChild(headerCell);
        
        headerCell = document.createElement("TH");
        headerCell.innerHTML = "Contact No";
        row.appendChild(headerCell);
        
        headerCell = document.createElement("TH");
        headerCell.innerHTML = "Email";
        row.appendChild(headerCell);
        
        headerCell = document.createElement("TH");
        headerCell.innerHTML = "Branch";
        row.appendChild(headerCell);
        
        headerCell = document.createElement("TH");
        headerCell.innerHTML = "Joining Year";
        row.appendChild(headerCell);
 
 
 
 
 
 
        //Add the data rows from Excel file.
        

        for (var i = 0; i <excelRows.length; i++) { 
            //Add the data row.
            var row = table.insertRow(-1);
 
            //Add the data cells.
            var cell = row.insertCell(-1);
            
                    var editableField = document.createElement("input")
                    editableField.type="text"
                    editableField.name="rollNo"
                    editableField.classList.add("form-control");
                    editableField.value= excelRows[i].rollNo;
                    editableField.readOnly="readOnly"
                    cell.append(editableField)
            
            var cell = row.insertCell(-1);
                    var editableField = document.createElement("input")
                    editableField.type="text"
                    editableField.name="firstName"
                    editableField.classList.add("form-control");
                    editableField.value= excelRows[i].firstName;
                    if(editableField.value=='undefined')
                        alert('Data at column '+(i+1)+' of First Name is Invalid.')
                    editableField.readOnly="readOnly"
                    cell.append(editableField)
            
            var cell = row.insertCell(-1);
                    var editableField = document.createElement("input")
                    editableField.type="text"
                    editableField.name="lastName"
                    editableField.classList.add("form-control");
                    editableField.value= excelRows[i].lastName;
                    if(editableField.value=='undefined')
                        alert('Data at column '+(i+1)+' of Last Name is Invalid.')
                    editableField.readOnly="readOnly"
                    cell.append(editableField)
                    
            var cell = row.insertCell(-1);
             var editableField = document.createElement("input")
                    editableField.type="text"
                    editableField.name="dateOfBirth"
                    editableField.classList.add("form-control");
                    editableField.value= excelRows[i].dateOfBirth;
                    if(editableField.value=='undefined')
                        alert('Data at column '+(i+1)+' of Date of Birth is Invalid.')
                    editableField.readOnly="readOnly"
                    cell.append(editableField)
                    
            cell = row.insertCell(-1);
             var editableField = document.createElement("input")
                    editableField.type="text"
                    editableField.name="studentContact"
                   editableField.classList.add("form-control");
                    editableField.value= excelRows[i].contactNo;
                    if(editableField.value=='undefined')
                        alert('Data at column '+(i+1)+' of Contact No. is Invalid.')
                    editableField.readOnly="readOnly"
                    cell.append(editableField)
                    
            cell = row.insertCell(-1);
             var editableField = document.createElement("input")
                    editableField.type="text"
                    editableField.name="studentEmail"
                    editableField.classList.add("form-control");
                    editableField.value= excelRows[i].email;
                    if(editableField.value=='undefined')
                        alert('Data at column '+(i+1)+' of Email is Invalid.')
                    editableField.readOnly="readOnly"
                    cell.append(editableField)
                    
            var cell = row.insertCell(-1); var editableField = document.createElement("input")
                    editableField.type="text"
                    editableField.name="branch"
                    editableField.classList.add("form-control");
                    editableField.value= excelRows[i].branch;
                    if(editableField.value=='undefined')
                        alert('Data at column '+(i+1)+' of Branch is Invalid.')
                    editableField.readOnly="readOnly"
                    cell.append(editableField)
            
            var cell = row.insertCell(-1);
             var editableField = document.createElement("input")
                    editableField.type="text"
                    editableField.name="joiningYear"
                   editableField.classList.add("form-control");
                    editableField.value= excelRows[i].joiningYear;
                    if(editableField.value=='undefined')
                        alert('Data at column '+(i+1)+' of Joining Year is Invalid.')
                    editableField.readOnly="readOnly"
                    cell.append(editableField)
        }
        var dvExcel = document.getElementById("dvExcel");
       
        dvExcel.innerHTML = "";
        
        dvExcel.append(table);
       document.getElementById("dvButton").style.display="block";
        $('html,body').animate({
        scrollTop: $("#dvButton").offset().top},
        'slow');
                   
        
    };

function exportTableToExcel(tableID, filename = ''){
    var downloadLink;
    var dataType = 'application/vnd.ms-excel';
    var tableSelect = document.getElementById(tableID);
    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    
    // Specify file name
    filename = filename?filename+'.xls':'sampleExcel.xls';
    
    // Create download link element
    downloadLink = document.createElement("a");
    
    document.body.appendChild(downloadLink);
    
    if(navigator.msSaveOrOpenBlob){
        var blob = new Blob(['\ufeff', tableHTML], {
            type: dataType
        });
        navigator.msSaveOrOpenBlob( blob, filename);
    }else{
        // Create a link to the file
        downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
    
        // Setting the file name
        downloadLink.download = filename;
        
        //triggering the function
        downloadLink.click();
    }
}