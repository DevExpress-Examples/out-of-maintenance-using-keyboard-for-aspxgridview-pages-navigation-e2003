var gridPerformingCallback = false;

function AddKeyboardNavigationTo(grid) {
    grid.BeginCallback.AddHandler(function(s, e) { gridPerformingCallback = true; });
    grid.EndCallback.AddHandler(function(s, e) { gridPerformingCallback = false; });
    ASPxClientUtils.AttachEventToElement(document, "keydown",
        function(evt) {
            return OnDocumentKeyDown(evt, grid);
        });
}

function OnDocumentKeyDown(evt, grid) {
    if(typeof(event) != "undefined" && event != null)
        evt = event;
    if(evt.ctrlKey && NeedProcessDocumentKeyDown(evt) && !gridPerformingCallback) {
        if(evt.keyCode == 37 /*Left Arrow*/) {
            if(grid.GetPageIndex() > 0)
                grid.PrevPage();
            return ASPxClientUtils.PreventEvent(evt);
        } else if(evt.keyCode == 39 /*Right Arrow*/ && grid.GetPageIndex() < grid.GetPageCount() - 1)
            grid.NextPage();
        else if(evt.keyCode == 36 /*Home*/ && grid.GetPageIndex() > 0) {
            grid.GotoPage(0);
            return ASPxClientUtils.PreventEvent(evt);
        } else if(evt.keyCode == 35 /*End*/ && grid.GetPageIndex() < grid.GetPageCount() - 1) {
            grid.GotoPage(grid.GetPageCount() - 1);
            return ASPxClientUtils.PreventEvent(evt);
        }
    }
}

function NeedProcessDocumentKeyDown(evt) {
    var evtSrc = ASPxClientUtils.GetEventSource(evt);
    if(evtSrc.tagName == "INPUT")
        return evtSrc.type != "text" && evtSrc.type != "password";
    else
        return evtSrc.tagName != "TEXTAREA";
}