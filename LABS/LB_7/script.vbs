var excel = WScript.CreateObject("Excel.Application"); 
var fileName = WScript.Arguments.Item(0);  
try { 	
    main(); 
} 
catch(e) {
    delete excel; 	
    throw e; 
}  
function main() {
    excel.Visible = true; 
    var book  = excel.Workbooks.Add();	
    var book  = excel.Workbooks.Open(fileName);	
    var sheet = book.Worksheets.Item(1);
 }