Sub AutoNew()
 Dim sMyFile As String

 On Error Resume Next
 sMyFile = InputBox("File Name", " Save File ")

 With Dialogs(wdDialogFileSummaryInfo)
 .Title = sMyFile
 .Execute
 End With

 Dialogs(wdDialogFileSaveAs).Show
End Sub