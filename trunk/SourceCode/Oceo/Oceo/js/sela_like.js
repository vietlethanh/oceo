/*
 * This file was automatically generated By Code Smith 
 * Modifications will be overwritten when code smith is run
 *
 * PLEASE DO NOT MAKE MODIFICATIONS TO THIS FILE
 * Date Created 5/6/2012
 *
 */



/// <summary>
/// Implementations of sllikes represent a Like
///
/// </summary>
function Like()
{		   
	//region PRESERVE ExtraMethods For Like
	//endregion
    //region Contants	
    var ACT_ADD = 10;
    var ACT_UPDATE = 11;
    var ACT_DELETE = 12;
    var ACT_CHANGE_PAGE = 13;
    var ACT_SHOW_EDIT = 14;
    var ACT_GET = 15;
    var _strPage = "admin_like.php";
    
   
    //endregion   
    
    //region Public Functions
    
    this.btnSave_OnClick = btnSave_OnClick;
    function btnSave_OnClick() {
        core.disableControl("btnOK", true);
        var isValid = true;

		var likeID = core.trim(core.getObject("txtLikeID").val());
		core.ValidateInputTextBox('txtLikeID','');
		if(likeID == ''){
			core.ValidateInputTextBox('txtLikeID','LikeID is required', isValid);
			isValid =  false;
		}else if (likeID.length > 20) {
			core.ValidateInputTextBox('txtLikeID','LikeID must be less than 20', isValid);
			isValid =  false;
		}

		var likeAmount = core.trim(core.getObject("txtLikeAmount").val());
		core.ValidateInputTextBox('txtLikeAmount','');
		if(likeAmount == ''){
			core.ValidateInputTextBox('txtLikeAmount','LikeAmount is required', isValid);
			isValid =  false;
		}else if (likeAmount.length > 12) {
			core.ValidateInputTextBox('txtLikeAmount','LikeAmount must be less than 0', isValid);
			isValid =  false;
		}
else if (core.isInteger(likeAmount)) {
			core.ValidateInputTextBox('txtLikeAmount','LikeAmount is invalid', isValid);
		}

		var unlikeAmount = core.trim(core.getObject("txtUnlikeAmount").val());
		core.ValidateInputTextBox('txtUnlikeAmount','');
		if(unlikeAmount == ''){
			core.ValidateInputTextBox('txtUnlikeAmount','UnlikeAmount is required', isValid);
			isValid =  false;
		}else if (unlikeAmount.length > 12) {
			core.ValidateInputTextBox('txtUnlikeAmount','UnlikeAmount must be less than 0', isValid);
			isValid =  false;
		}
else if (core.isInteger(unlikeAmount)) {
			core.ValidateInputTextBox('txtUnlikeAmount','UnlikeAmount is invalid', isValid);
		}

		var lIkeUsers = core.trim(core.getObject("txtLIkeUsers").val());
		core.ValidateInputTextBox('txtLIkeUsers','');
		if(lIkeUsers == ''){
			core.ValidateInputTextBox('txtLIkeUsers','LIkeUsers is required', isValid);
			isValid =  false;
		}
		var unlikeUsers = core.trim(core.getObject("txtUnlikeUsers").val());
		core.ValidateInputTextBox('txtUnlikeUsers','');
		if(unlikeUsers == ''){
			core.ValidateInputTextBox('txtUnlikeUsers','UnlikeUsers is required', isValid);
			isValid =  false;
		}
	       
        if (isValid == false) {
         core.disableControl("btnOK", false);
            return;
        }
         
        if (core.getObject("adddocmode")[0].value == ADD_MODE) {
            insertNew();
        }
        else {
            edit();
        }
    }
    
    this.edit = edit;
    function edit() {

		var likeID = core.trim(core.getObject("txtLikeID").val());
		var likeAmount = core.trim(core.getObject("txtLikeAmount").val());
		var unlikeAmount = core.trim(core.getObject("txtUnlikeAmount").val());
		var lIkeUsers = core.trim(core.getObject("txtLIkeUsers").val());
		var unlikeUsers = core.trim(core.getObject("txtUnlikeUsers").val());
	                
        strRequest = "?isAJ=1&act=" + ACT_UPDATE +  
            '&LikeID='+ core.urlencode(likeID)+
			'&LikeAmount='+ core.urlencode(likeAmount)+
			'&UnlikeAmount='+ core.urlencode(unlikeAmount)+
			'&LIkeUsers='+ core.urlencode(lIkeUsers)+
			'&UnlikeUsers='+ core.urlencode(unlikeUsers)		;
        
        var ajax = new Ajax();
        ajax.SendRequestToServerWithCustomMsg(_strPage, strRequest, edit_OnCallBack, true, MSG_AJAX_FETCHING_VN);
    }

    function edit_OnCallBack(xmlHTTPRequest) {
        core.disableControl("btnOK", false);
        if (xmlHTTPRequest.readyState == 4) {
            if (xmlHTTPRequest.status == 200) {
                var strRespond = core.parserXML(xmlHTTPRequest.responseText);
                if (!core.headerProcessingArr(strRespond[0], Array(true, true, false))) {
                    // ph?i kh?i t?o l?i d? tr?nh d?ng popdiv addFavourite
                    //var popDiv = new PopDiv();
                    //popDiv.init();
                    popDiv.alert(MSG_RES_OPERATION_FAIL, SYSTEM_TITLE_ERROR, 1);
                    return;
                }
                if (parseInt(strRespond[1]['rs']) == 1) {
                    showInfoBar('success', strRespond[1]["inf"]);
                    showAddMode();
                    changePage(_strPage, ACT_CHANGE_PAGE, core.getObject("txtPage").val());
                }
                else {
                    //var popDiv = new PopDiv();
                    //popDiv.init();
                    top.popDiv.childPop.alert(strRespond[1]["inf"], SYSTEM_TITLE_ERROR, 1);
                }
            }
        }
    }
    
    this.insertNew = insertNew;
    function insertNew() {

		var likeID = core.trim(core.getObject("txtLikeID").val());
		var likeAmount = core.trim(core.getObject("txtLikeAmount").val());
		var unlikeAmount = core.trim(core.getObject("txtUnlikeAmount").val());
		var lIkeUsers = core.trim(core.getObject("txtLIkeUsers").val());
		var unlikeUsers = core.trim(core.getObject("txtUnlikeUsers").val());
	        
        strRequest = "?isAJ=1&act=" + ACT_ADD +  
            '&LikeID='+ core.urlencode(likeID)+
			'&LikeAmount='+ core.urlencode(likeAmount)+
			'&UnlikeAmount='+ core.urlencode(unlikeAmount)+
			'&LIkeUsers='+ core.urlencode(lIkeUsers)+
			'&UnlikeUsers='+ core.urlencode(unlikeUsers)		;
        
        var ajax = new Ajax();
        ajax.SendRequestToServerWithCustomMsg(_strPage, strRequest, insertNew_OnCallBack, true, MSG_AJAX_FETCHING_VN);
    }

    function insertNew_OnCallBack(xmlHTTPRequest) {
        core.disableControl("btnOK", false);
        if (xmlHTTPRequest.readyState == 4) {
            if (xmlHTTPRequest.status == 200) {
                var strRespond = core.parserXML(xmlHTTPRequest.responseText);
                if (!core.headerProcessingArr(strRespond[0], Array(true, true, false))) {
                    // ph?i kh?i t?o l?i d? tr?nh d?ng popdiv addFavourite
                    //var popDiv = new PopDiv();
                    //popDiv.init();
                    popDiv.alert(MSG_RES_OPERATION_FAIL, SYSTEM_TITLE_ERROR, 1);
                    return;
                }
                if (parseInt(strRespond[1]['rs']) == 1) {
                    showInfoBar('success', strRespond[1]["inf"]);
                    showAddMode();
                    changePage(_strPage, ACT_CHANGE_PAGE, 1);
                }
                else {
                    //var popDiv = new PopDiv();
                    //popDiv.init();
                    top.popDiv.childPop.alert(strRespond[1]["inf"], SYSTEM_TITLE_ERROR, 1);
                }
            }
        }
    }
    
    var _cacheURL_pdoc;
    this.deleteObj = deleteObj;
    function deleteObj(id, name) {
        //curRow = currentRowId;
        popDiv.alert('Do you want to delete ' + name + ' ?', SYSTEM_TITLE_ERROR, 2, "_objLike.delete_OK()", "_objLike.delete_Cancel()");

        var keyword = '';
        if (typeof core.getObject("txtGet") != 'undefined') {
            keyword = core.getObject("txtGet").val();
        }
      
        _cacheURL_pdoc = _strPage + "?isAJ=1&act=" + ACT_DELETE + "&id=" + docid + "&p=" + core.getObject("txtPage")[0].value + "&kw=" + keyword;
    }
    this.delete_Cancel = delete_Cancel;
    function delete_Cancel() {
        //core.getObject("adddocmode")[0].value = ADD_MODE;
    }
    this.delete_OK = delete_OK;
    function delete_OK() {
        // Prepare AJAX to remove selected doc from favorite list
        var ajax = new Ajax(METHOD_GET);
        ajax.SendRequestToServerWithCustomMsg(_cacheURL_pdoc, null, delete_OnCallBack, true, MSG_AJAX_FETCHING_VN);
    }
    function delete_OnCallBack(xmlHTTPRequest) {

        if (xmlHTTPRequest.readyState == 4) {
            if (xmlHTTPRequest.status == 200) {
                var strRespond = core.parserXML(xmlHTTPRequest.responseText);

                if (!core.headerProcessingArr(strRespond[0], Array(true, true, false))) {
                    popDiv.alert(MSG_RES_OPERATION_FAIL, SYSTEM_TITLE_ERROR, 1);
                    return;
                }
                if (parseInt(strRespond[1]['rs']) == 1) {
                    parent.window.showInfoBar('success', strRespond[1]["inf"]);
                    core.getObject("txtPage")[0].value = strRespond[1]["p"];
                    popDiv.hide();
                    core.getObject("list-content")[0].innerHTML = strRespond[1]['list'];
                }
                else //if(parseInt(strRespond[3]) == -1)
                {
                    popDiv.alert(MSG_RES_OPERATION_FAIL, SYSTEM_TITLE_ERROR, 1);
                }
            }
        }
    }
    
    this.showEdit = showEdit;
    function showEdit(strID) {
        showAddMode();
        strRequest = "?isAJ=1&act=" + ACT_SHOW_EDIT + "&id=" + strID; ;
        var ajax = new Ajax(METHOD_GET);
        ajax.SendRequestToServerWithCustomMsg(_strPage + strRequest, null, showEdit_OnCallBack, true, MSG_AJAX_FETCHING_VN);

    }
    function showEdit_OnCallBack(xmlHTTPRequest) {

        if (xmlHTTPRequest.readyState == 4) {
            if (xmlHTTPRequest.status == 200) {
                var strRespond = core.parserXML(xmlHTTPRequest.responseText);
                if (!core.headerProcessingArr(strRespond[0], Array(true, true, false))) {
                    popDiv.alert(MSG_RES_OPERATION_FAIL, SYSTEM_TITLE_ERROR, 1);
                    return;
                }
                if (parseInt(strRespond[1]['rs']) == 1) {
                    showInfoBar('success', MSG_RES_OPERATION_SUCCESS);
                    //alert(strRespond[1]['sens']);
                    // Add Doc && clear field
					core.getObject('txtLikeID').val(LikeID);
					core.getObject('txtLikeAmount').val(LikeAmount);
					core.getObject('txtUnlikeAmount').val(UnlikeAmount);
					core.getObject('txtLIkeUsers').val(LIkeUsers);
					core.getObject('txtUnlikeUsers').val(UnlikeUsers);
                    core.getObject("adddocmode")[0].value = EDIT_MODE;
                    core.getObject("status-add")[0].innerHTML = 'Edit mode';
                }
                else  // Duplicate
                {
                    popDiv.alert(MSG_RES_OPERATION_FAIL, SYSTEM_TITLE_ERROR, 1);
                }
            }
        }
    }
    
    this.showAddMode = showAddMode;
    function showAddMode() {
        core.getObject("adddocmode")[0].value = ADD_MODE;
        core.getObject("status-add")[0].innerHTML = 'Add mode';
		core.getObject('txtLikeID').val('');
		core.getObject('txtLikeAmount').val('');
		core.getObject('txtUnlikeAmount').val('');
		core.getObject('txtLIkeUsers').val('');
		core.getObject('txtUnlikeUsers').val('');
    }
    //endregion   
}
var _objLike = new  Like();
