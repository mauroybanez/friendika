<h1>Modifica i dettagli del profilo</h1>

<div id="profile-edit-links">
<ul>
<li><a href="profile/$profile_id/view?tab=profile" id="profile-edit-view-link" title="View this profile">Guarda questo profilo</a></li>
<li><a href="profiles/clone/$profile_id" id="profile-edit-clone-link" title="Create a new profile using these settings">Clona questo profilo</a></li>
<li></li>
<li><a href="profiles/drop/$profile_id" id="profile-edit-drop-link" title="Delete this profile" $disabled >Elimina questo profilo</a></li>

</ul>
</div>

<div id="profile-edit-links-end"></div>

$default

<div id="profile-edit-wrapper" >
<form id="profile-edit-form" name="form1" action="profiles/$profile_id" method="post" >

<div id="profile-edit-profile-name-wrapper" >
<label id="profile-edit-profile-name-label" for="profile-edit-profile-name" >Nome profilo: </label>
<input type="text" size="32" name="profile_name" id="profile-edit-profile-name" value="$profile_name" /><div class="required">*</div>
</div>
<div id="profile-edit-profile-name-end"></div>

<div id="profile-edit-name-wrapper" >
<label id="profile-edit-name-label" for="profile-edit-name" >Il tuo nome completo: </label>
<input type="text" size="32" name="name" id="profile-edit-name" value="$name" />
</div>
<div id="profile-edit-name-end"></div>

<div id="profile-edit-pdesc-wrapper" >
<label id="profile-edit-pdesc-label" for="profile-edit-pdesc" >Breve descrizione: </label>
<input type="text" size="32" name="pdesc" id="profile-edit-pdesc" value="$pdesc" />
</div><div id="profile-edit-pdesc-desc">(es. titolo, posizione, altro)</div>
<div id="profile-edit-pdesc-end"></div>


<div id="profile-edit-gender-wrapper" >
<label id="profile-edit-gender-label" for="gender-select" >Il tuo sesso: </label>
$gender
</div>
<div id="profile-edit-gender-end"></div>

<div id="profile-edit-dob-wrapper" >
<label id="profile-edit-dob-label" for="dob-select" >Data di nascia (a/m/g): </label>
<div id="profile-edit-dob" >
$dob $age
</div>
</div>
<div id="profile-edit-dob-end"></div>

$hide_friends

<div class="profile-edit-submit-wrapper" >
<input type="submit" name="submit" class="profile-edit-submit-button" value="Aggiorna" />
</div>
<div class="profile-edit-submit-end"></div>


<div id="profile-edit-address-wrapper" >
<label id="profile-edit-address-label" for="profile-edit-address" >Indirizzo: </label>
<input type="text" size="32" name="address" id="profile-edit-address" value="$address" />
</div>
<div id="profile-edit-address-end"></div>

<div id="profile-edit-locality-wrapper" >
<label id="profile-edit-locality-label" for="profile-edit-locality" >Localit&agrave;/Citt&agrave;: </label>
<input type="text" size="32" name="locality" id="profile-edit-locality" value="$locality" />
</div>
<div id="profile-edit-locality-end"></div>


<div id="profile-edit-postal-code-wrapper" >
<label id="profile-edit-postal-code-label" for="profile-edit-postal-code" >CAP: </label>
<input type="text" size="32" name="postal_code" id="profile-edit-postal-code" value="$postal_code" />
</div>
<div id="profile-edit-postal-code-end"></div>

<div id="profile-edit-country-name-wrapper" >
<label id="profile-edit-country-name-label" for="profile-edit-country-name" >Stato: </label>
<select name="country_name" id="profile-edit-country-name" onChange="Fill_States('$region');">
<option selected="selected" >$country_name</option>
<option>temp</option>
</select>
</div>
<div id="profile-edit-country-name-end"></div>

<div id="profile-edit-region-wrapper" >
<label id="profile-edit-region-label" for="profile-edit-region" >Regione: </label>
<select name="region" id="profile-edit-region" onChange="Update_Globals();" >
<option selected="selected" >$region</option>
<option>temp</option>
</select>
</div>
<div id="profile-edit-region-end"></div>

<div class="profile-edit-submit-wrapper" >
<input type="submit" name="submit" class="profile-edit-submit-button" value="Aggiorna" />
</div>
<div class="profile-edit-submit-end"></div>

<div id="profile-edit-marital-wrapper" >
<label id="profile-edit-marital-label" for="profile-edit-marital" ><span class="heart">&hearts;</span>Stato sentimentale: </label>
$marital
</div>
<label id="profile-edit-with-label" for="profile-edit-with" > Con chi: </label>
<input type="text" size="32" name="with" id="profile-edit-with" value="$with" />
<div id="profile-edit-marital-end"></div>

<div id="profile-edit-sexual-wrapper" >
<label id="profile-edit-sexual-label" for="sexual-select" >Preferenza sessuale: </label>
$sexual
</div>
<div id="profile-edit-sexual-end"></div>



<div id="profile-edit-homepage-wrapper" >
<label id="profile-edit-homepage-label" for="profile-edit-homepage" >Indirizzo homepage: </label>
<input type="text" size="32" name="homepage" id="profile-edit-homepage" value="$homepage" />
</div>
<div id="profile-edit-homepage-end"></div>

<div id="profile-edit-politic-wrapper" >
<label id="profile-edit-politic-label" for="profile-edit-politic" >Orientamento politico: </label>
<input type="text" size="32" name="politic" id="profile-edit-politic" value="$politic" />
</div>
<div id="profile-edit-politic-end"></div>

<div id="profile-edit-religion-wrapper" >
<label id="profile-edit-religion-label" for="profile-edit-religion" >Religione: </label>
<input type="text" size="32" name="religion" id="profile-edit-religion" value="$religion" />
</div>
<div id="profile-edit-religion-end"></div>

<div id="profile-edit-pubkeywords-wrapper" >
<label id="profile-edit-pubkeywords-label" for="profile-edit-pubkeywords" >[Public] Parole chiave: </label>
<input type="text" size="32" name="pub_keywords" id="profile-edit-pubkeywords" title="Esempio: pescare fotografia software" value="$pub_keywords" />
</div><div id="profile-edit-pubkeywords-desc">(Used for suggesting potential friends, can be seen by others)</div>
<div id="profile-edit-pubkeywords-end"></div>

<div id="profile-edit-prvkeywords-wrapper" >
<label id="profile-edit-prvkeywords-label" for="profile-edit-prvkeywords" >Parole chiave: </label>
<input type="text" size="32" name="prv_keywords" id="profile-edit-prvkeywords" title="Esempio: pescare fotografia software" value="$prv_keywords" />
</div><div id="profile-edit-prvkeywords-desc">(Usati per la ricerca dei profili, mai mostrati agli altri)</div>
<div id="profile-edit-prvkeywords-end"></div>


<div class="profile-edit-submit-wrapper" >
<input type="submit" name="submit" class="profile-edit-submit-button" value="Aggiorna" />
</div>
<div class="profile-edit-submit-end"></div>

<div id="about-jot-wrapper" >
<p id="about-jot-desc" >
Raccontaci di te....
</p>

<textarea rows="10" cols="72" id="profile-jot-text" name="about" >$about</textarea>

</div>
<div id="about-jot-end"></div>
</div>


<div id="interest-jot-wrapper" >
<p id="interest-jot-desc" >
Hobbie/Interessi
</p>

<textarea rows="10" cols="72" id="interest-jot-text" name="interest" >$interest</textarea>

</div>
<div id="interest-jot-end"></div>
</div>


<div id="contact-jot-wrapper" >
<p id="contact-jot-desc" >
Informazioni su contatti e Social network
</p>

<textarea rows="10" cols="72" id="contact-jot-text" name="contact" >$contact</textarea>

</div>
<div id="contact-jot-end"></div>
</div>


<div class="profile-edit-submit-wrapper" >
<input type="submit" name="submit" class="profile-edit-submit-button" value="Aggiorna" />
</div>
<div class="profile-edit-submit-end"></div>


<div id="music-jot-wrapper" >
<p id="music-jot-desc" >
Interessi musicali
</p>

<textarea rows="10" cols="72" id="music-jot-text" name="music" >$music</textarea>

</div>
<div id="music-jot-end"></div>
</div>

<div id="book-jot-wrapper" >
<p id="book-jot-desc" >
Libri, letteratura
</p>

<textarea rows="10" cols="72" id="book-jot-text" name="book" >$book</textarea>

</div>
<div id="book-jot-end"></div>
</div>



<div id="tv-jot-wrapper" >
<p id="tv-jot-desc" >
Televisione
</p>

<textarea rows="10" cols="72" id="tv-jot-text" name="tv" >$tv</textarea>

</div>
<div id="tv-jot-end"></div>
</div>



<div id="film-jot-wrapper" >
<p id="film-jot-desc" >
Film/danza/cultura/intrattenimento
</p>

<textarea rows="10" cols="72" id="film-jot-text" name="film" >$film</textarea>

</div>
<div id="film-jot-end"></div>
</div>


<div class="profile-edit-submit-wrapper" >
<input type="submit" name="submit" class="profile-edit-submit-button" value="Aggiorna" />
</div>
<div class="profile-edit-submit-end"></div>


<div id="romance-jot-wrapper" >
<p id="romance-jot-desc" >
Amore/romanticismo
</p>

<textarea rows="10" cols="72" id="romance-jot-text" name="romance" >$romance</textarea>

</div>
<div id="romance-jot-end"></div>
</div>



<div id="work-jot-wrapper" >
<p id="work-jot-desc" >
Lavoro/impiego
</p>

<textarea rows="10" cols="72" id="work-jot-text" name="work" >$work</textarea>

</div>
<div id="work-jot-end"></div>
</div>



<div id="education-jot-wrapper" >
<p id="education-jot-desc" >
Scuola/educazione
</p>

<textarea rows="10" cols="72" id="education-jot-text" name="education" >$education</textarea>

</div>
<div id="education-jot-end"></div>
</div>



<div class="profile-edit-submit-wrapper" >
<input type="submit" name="submit" class="profile-edit-submit-button" value="Aggiorna" />
</div>
<div class="profile-edit-submit-end"></div>


</form>
</div>
<script type="text/javascript">Fill_Country('$country_name');Fill_States('$region');</script>
