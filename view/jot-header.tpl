
<script language="javascript" type="text/javascript" src="$baseurl/tinymce/jscripts/tiny_mce/tiny_mce_src.js"></script>
<script language="javascript" type="text/javascript">

var editor;

tinyMCE.init({
	theme : "advanced",
	mode : "specific_textareas",
	editor_selector: /(profile-jot-text|prvmail-text)/,
	plugins : "bbcode,paste",
	theme_advanced_buttons1 : "bold,italic,underline,undo,redo,link,unlink,image,forecolor,formatselect,code",
	theme_advanced_buttons2 : "",
	theme_advanced_buttons3 : "",
	theme_advanced_toolbar_location : "top",
	theme_advanced_toolbar_align : "center",
	theme_advanced_blockformats : "blockquote,code",
	paste_text_sticky : true,
	entity_encoding : "raw",
	add_unload_trigger : false,
	remove_linebreaks : false,
	force_p_newlines : false,
	force_br_newlines : true,
	forced_root_block : '',
	convert_urls: false,
	content_css: "$baseurl/view/custom_tinymce.css",
	theme_advanced_path : false,
	setup : function(ed) {
	     //Character count
		ed.onKeyUp.add(function(ed, e) {
			var txt = tinyMCE.activeEditor.getContent();
			var text = txt.length;
			if(txt.length <= 140) {
				$('#character-counter').removeClass('red');
				$('#character-counter').removeClass('orange');
				$('#character-counter').addClass('grey');
			}
			if((txt.length > 140) && (txt .length <= 420)) {
				$('#character-counter').removeClass('grey');
				$('#character-counter').removeClass('red');
				$('#character-counter').addClass('orange');
			}
			if(txt.length > 420) {
				$('#character-counter').removeClass('grey');
				$('#character-counter').removeClass('orange');
				$('#character-counter').addClass('red');
			}
			$('#character-counter').text(text);
    	});

		ed.onInit.add(function(ed) {
			ed.pasteAsPlainText = true;
		});

	}
});

</script>
<script type="text/javascript" src="include/ajaxupload.js" ></script>
<script>
	$(document).ready(function() {
		var uploader = new window.AjaxUpload(
			'wall-image-upload',
			{ action: 'wall_upload/$nickname',
				name: 'userfile',
				onSubmit: function(file,ext) { $('#profile-rotator').show(); },
				onComplete: function(file,response) {
					tinyMCE.execCommand('mceInsertRawHTML',false,response);
					$('#profile-rotator').hide();
				}				 
			}
		);
		$('#contact_allow, #contact_deny, #group_allow, #group_deny').change(function() {
			var selstr;
			$('#contact_allow option:selected, #contact_deny option:selected, #group_allow option:selected, #group_deny option:selected').each( function() {
				selstr = $(this).text();
				$('#profile-jot-perms img').attr('src', 'images/lock_icon.gif');
				$('.profile-jot-net input').attr('disabled', 'disabled');
			});
			if(selstr == null) { 
				$('#profile-jot-perms img').attr('src', 'images/unlock_icon.gif');
				$('.profile-jot-net input').attr('disabled', false);
			}

		}).trigger('change');

	});

	function jotGetLink() {
		reply = prompt("$linkurl");
		if(reply && reply.length) {
			$('#profile-rotator').show();
			$.get('parse_url?url=' + reply, function(data) {
				tinyMCE.execCommand('mceInsertRawHTML',false,data);
				$('#profile-rotator').hide();
			});
		}
	}

	function jotGetVideo() {
		reply = prompt("$utubeurl");
		if(reply && reply.length) {
			tinyMCE.execCommand('mceInsertRawHTML',false,'[youtube]' + reply + '[/youtube]');
		}
	}

	function jotVideoURL() {
		reply = prompt("$vidurl");
		if(reply && reply.length) {
			tinyMCE.execCommand('mceInsertRawHTML',false,'[video]' + reply + '[/video]');
		}
	}

	function jotAudioURL() {
		reply = prompt("$audurl");
		if(reply && reply.length) {
			tinyMCE.execCommand('mceInsertRawHTML',false,'[audio]' + reply + '[/audio]');
		}
	}


	function jotGetLocation() {
		reply = prompt("$whereareu", $('#jot-location').val());
		if(reply && reply.length) {
			$('#jot-location').val(reply);
		}
	}

	function jotShare(id) {
		$('#like-rotator-' + id).show();
		$.get('share/' + id, function(data) {
			tinyMCE.execCommand('mceInsertRawHTML',false,data);
			$('#like-rotator-' + id).hide();
			$(window).scrollTop(0);
		});
	}

	function linkdropper(event) {
		var linkFound = event.dataTransfer.types.contains("text/uri-list");
		if(linkFound)
			event.preventDefault();
	}

	function linkdrop(event) {
		var reply = event.dataTransfer.getData("text/uri-list");
		event.target.textContent = reply;
		event.preventDefault();
		if(reply && reply.length) {
			$('#profile-rotator').show();
			$.get('parse_url?url=' + reply, function(data) {
				tinyMCE.execCommand('mceInsertRawHTML',false,data);
				$('#profile-rotator').hide();
			});
		}
	}

	function jotClearLocation() {
		$('#jot-coord').val('');
		$('#profile-nolocation-wrapper').hide();
	}

	$geotag

</script>

