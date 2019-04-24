function ПоискСтрокПоУсловию(ByVal ТекстДляПоиска As String, Optional HideOnly As Boolean) As Long
    Dim ra As Range, delra As Range
    Application.ScreenUpdating = False
    For Each ra In ActiveSheet.UsedRange.Rows
        If Not ra.Find(ТекстДляПоиска, , xlValues, xlPart) Is Nothing Then
            If delra Is Nothing Then Set delra = ra Else Set delra = Union(delra, ra)
        End If
    Next
    On Error Resume Next: ПоискСтрокПоУсловию = delra.Areas.Count 
    If Not delra Is Nothing Then
        If HideOnly Then delra.EntireRow.Hidden = True Else delra.EntireRow.Delete
    End If
End Function