<h1>Carica foto del profilo</h1>

<form enctype="multipart/form-data" action="profile_photo" method="post">

<div id="profile-photo-upload-wrapper">
<label id="profile-photo-upload-label" for="profile-photo-upload">Carica File: </label>
<input name="userfile" type="file" id="profile-photo-upload" size="48" />
</div>

<div id="profile-photo-submit-wrapper">
<input type="submit" name="submit" id="profile-photo-submit" value="Carica">
</div>

</form>

<div id="profile-photo-link-select-wrapper">
o <a href='photos/$user'>seleziona una foto da un album</a>
</div>