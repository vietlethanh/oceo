/*
 * This file was automatically generated By Code Smith 
 * Modifications will be overwritten when code smith is run
 *
 * PLEASE DO NOT MAKE MODIFICATIONS TO THIS FILE
 * Date Created 5/6/2012
 *
 */



/// <summary>
/// Implementations of slcomments represent a Comment
///
/// </summary>
var comment = 
{		   
    //region Contants	
    ACT_ADD : 130,
    ACT_UPDATE : 131,
    ACT_DELETE : 132,
    ACT_CHANGE_PAGE : 133,
    ACT_SHOW_EDIT : 134,
    ACT_GET : 135,
	ACT_BAD_COMMENT: 136,
    Page : "bg_comment.php",
    AdminPage : "../bg_comment.php",
    
   getCommentInfo: function() {
		var controlSubmit = 'btnPost';
        core.util.disableControl(controlSubmit, true);
        var isValid = true;
		var controlID = 'txtcontent';		
		var content = core.util.getObjectValueByID(controlID);
		 core.util.validateInputTextBox(controlID,'');
		if(core.util.isNull(content)){
			 core.util.validateInputTextBox(controlID,'Nội dung comment không được rỗng', isValid);
			isValid =  false;
		}else if (content.length > 255) {
			 core.util.validateInputTextBox(controlID,'Nội dung comment phải ngắn hơn 255 ký tự', isValid);
			isValid =  false;
		}else if (content.length < 10) {
			 core.util.validateInputTextBox(controlID,'Nội dung comment quá ngắn', isValid);
			isValid =  false;
		}
		
        if (isValid == false) {
			core.util.disableControl(controlSubmit, false);
            return;
        }
		var commentInfo = 
		{
			Content: content,
			RetailerID: core.util.getObjectValueByID("hdretailerid")
		};
		return commentInfo;
    },
	postComment: function() {  
		var controlSubmit = 'btnPost';
		var commentInfo = this.getCommentInfo();
		
		if(core.util.isNull(commentInfo))
		{
			return false;
		}
		
		commentInfo.act = this.ACT_ADD;
		//return false;;
		
        core.request.post(this.Page,commentInfo,
            function(respone, info){
				var strRespond = core.util.parserXML(respone);
				if (parseInt(strRespond[1]['rs']) == 1) {
					core.ui.showInfoBar(1, strRespond[1]["inf"]);	
					comment.clearForm();
					core.util.disableControl(controlSubmit, false);
					var listComment = core.util.getObjectByID('comment-list');
					listComment.html(strRespond[1]["form"]);
                }
                else{
                    core.ui.showInfoBar(2, strRespond[1]["inf"]);	
					core.util.disableControl(controlSubmit, false);
                }
            },
            function()
            {
				core.ui.showInfoBar(2, core.constant.MsgProcessError);	
				core.util.disableControl(controlSubmit, false);
            }
        );
    },
	changePage: function(page) {  
		
		var commentInfo = 
		{
		    RetailerID: core.util.getObjectValueByID("hdretailerid"),
			p: page,
			act: this.ACT_CHANGE_PAGE
		};
		
        core.request.post(this.Page,commentInfo,
            function(respone, info){
				var strRespond = core.util.parserXML(respone);
				if (parseInt(strRespond[1]['rs']) == 1) {
				    core.ui.hideInfoBar();	
					var listComment = core.util.getObjectByID('comment-list');
					listComment.html(strRespond[1]["inf"]);
                }
                else{
                    core.ui.showInfoBar(2, strRespond[1]["inf"]);	
                }
            },
            function()
            {
				core.ui.showInfoBar(2, core.constant.MsgProcessError);	
				core.util.disableControl(controlSubmit, false);
            },false
        );
    },
	badComment: function(commentID, reportBad, fromAdmin) {  
		
		var commentInfo = {
			id : commentID,
			isbad: reportBad			
		}
		
		if(core.util.isNull(commentInfo))
		{
			return false;
		}
		page = this.Page;
		if(fromAdmin)
		{
			page = this.AdminPage;
		}
		commentInfo.act = this.ACT_BAD_COMMENT;
		//return false;;
		
        core.request.post(page,commentInfo,
            function(respone, info){
				var strRespond = core.util.parserXML(respone);
				if (parseInt(strRespond[1]['rs']) == 1) {
					core.ui.showInfoBar(1, strRespond[1]["inf"]);					
                }
                else{
                    core.ui.showInfoBar(2, strRespond[1]["inf"]);						
                }
            },
            function()
            {
				core.ui.showInfoBar(2, core.constant.MsgProcessError);					
            }
        );
    },
	
	clearForm: function()
	{
		var controlID = 'txtcontent';		
		core.util.clearValue(controlID);			
	},
    //endregion   
    
    //region Public Functions
    /*
    this.btnSave_OnClick = btnSave_OnClick;
    function btnSave_OnClick() {
        core.disableControl("btnOK", true);
        var isValid = true;

		var commentID = core.trim(core.getObject("txtCommentID").val());
		core.ValidateInputTextBox('txtCommentID','');
		if(commentID == ''){
			core.ValidateInputTextBox('txtCommentID','CommentID is required', isValid);
			isValid =  false;
		}else if (commentID.length > 20) {
			core.ValidateInputTextBox('txtCommentID','CommentID must be less than 20', isValid);
			isValid =  false;
		}

		var commentType = core.trim(core.getObject("txtCommentType").val());
		core.ValidateInputTextBox('txtCommentType','');
		if(commentType == ''){
			core.ValidateInputTextBox('txtCommentType','CommentType is required', isValid);
			isValid =  false;
		}else if (commentType.length > 20) {
			core.ValidateInputTextBox('txtCommentType','CommentType must be less than 20', isValid);
			isValid =  false;
		}

		var articleID = core.trim(core.getObject("txtArticleID").val());
		core.ValidateInputTextBox('txtArticleID','');
		if(articleID == ''){
			core.ValidateInputTextBox('txtArticleID','ArticleID is required', isValid);
			isValid =  false;
		}else if (articleID.length > 20) {
			core.ValidateInputTextBox('txtArticleID','ArticleID must be less than 20', isValid);
			isValid =  false;
		}

		var content = core.trim(core.getObject("txtContent").val());
		core.ValidateInputTextBox('txtContent','');
		if(content == ''){
			core.ValidateInputTextBox('txtContent','Content is required', isValid);
			isValid =  false;
		}
		var status = core.trim(core.getObject("txtStatus").val());
		core.ValidateInputTextBox('txtStatus','');
		if(status == ''){
			core.ValidateInputTextBox('txtStatus','Status is required', isValid);
			isValid =  false;
		}else if (status.length > 20) {
			core.ValidateInputTextBox('txtStatus','Status must be less than 20', isValid);
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

		var commentID = core.trim(core.getObject("txtCommentID").val());
		var commentType = core.trim(core.getObject("txtCommentType").val());
		var articleID = core.trim(core.getObject("txtArticleID").val());
		var content = core.trim(core.getObject("txtContent").val());
		var status = core.trim(core.getObject("txtStatus").val());
	                
        strRequest = "?isAJ=1&act=" + ACT_UPDATE +  
            '&CommentID='+ core.urlencode(commentID)+
			'&CommentType='+ core.urlencode(commentType)+
			'&ArticleID='+ core.urlencode(articleID)+
			'&Content='+ core.urlencode(content)+
			'&Status='+ core.urlencode(status)		;
        
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

		var commentID = core.trim(core.getObject("txtCommentID").val());
		var commentType = core.trim(core.getObject("txtCommentType").val());
		var articleID = core.trim(core.getObject("txtArticleID").val());
		var content = core.trim(core.getObject("txtContent").val());
		var status = core.trim(core.getObject("txtStatus").val());
	        
        strRequest = "?isAJ=1&act=" + ACT_ADD +  
            '&CommentID='+ core.urlencode(commentID)+
			'&CommentType='+ core.urlencode(commentType)+
			'&ArticleID='+ core.urlencode(articleID)+
			'&Content='+ core.urlencode(content)+
			'&Status='+ core.urlencode(status)		;
        
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
        popDiv.alert('Do you want to delete ' + name + ' ?', SYSTEM_TITLE_ERROR, 2, "_objComment.delete_OK()", "_objComment.delete_Cancel()");

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
					core.getObject('txtCommentID').val(CommentID);
					core.getObject('txtCommentType').val(CommentType);
					core.getObject('txtArticleID').val(ArticleID);
					core.getObject('txtContent').val(Content);
					core.getObject('txtStatus').val(Status);
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
		core.getObject('txtCommentID').val('');
		core.getObject('txtCommentType').val('');
		core.getObject('txtArticleID').val('');
		core.getObject('txtContent').val('');
		core.getObject('txtStatus').val('');
    }
    //endregion   
	*/
}
//var _objComment = new  Comment();
