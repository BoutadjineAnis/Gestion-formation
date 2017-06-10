<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layouts/taglib.jsp" %>


<div class="contact-form">
   <form  method="post" class="form-horizontal defaultForm" name="form" onsubmit="return Verif_Niveau()&& DateComparaison()" action="Traitement_Ajout_Employe">
         <div class="form-group ">
            <label class="col-md-3 control-label" for="input">DUPW</label>
            <div class="col-md-3">
               <select name="unite" size="1" class="form-control" onchange="fetch_select(this.value);">
                  <option  disabled selected value>choisir</option>
                  <c:forEach var="unite" items="">
                     <option value="">  obtion   </option>
                  </c:forEach>
               </select>
            </div>
         </div>
      <div class="form-group ">
         <label class="col-md-3 control-label" for="input">Service/Bureau de Poste</label>
         <div class="col-md-3">
            <select name="service" id="ServiceAjax" size="1" class="form-control">
               <option disabled selected value>choisir</option>
               <c:forEach var="service" items="">
                  <option value=""> obtion</option>
               </c:forEach>
            </select>
         </div>
      </div>
         <div class="form-group ">
            <input type="hidden"  name="unite" value="" >
         </div>
      <div class="form-group">
         <label class="col-md-3 control-label">Nom</label>
         <div class="col-md-3">
            <input type="text"  name="nom" class="form-control">
         </div>
      </div>
      <div class="form-group ">
         <label class="col-md-3 control-label" >Prénom</label>
         <div class="col-md-3">
            <input type="text"  name="prenom" class="form-control">
         </div>
      </div>
      <div class="form-group ">
         <label class="col-md-3 control-label" >Civilité</label>
         <div class="col-md-3">
            <select name="sexe" size="1" class="form-control">
               <option disabled selected value>choisir</option>
               <option value="Monsieur">Monsieur</option>
               <option value="Madame">Madame</option>
                <option value="Mademoiselle">Mademoiselle</option>
            </select>
         </div>
      </div>
      <div class="form-group">
         <label class="col-md-3 control-label">Lieu de Naissance</label>
         <div class="col-md-3">
            <label class="radio" class="form-control">
            <input type="radio" name="lieu_naissance" id="Algerie" value="ALGERIE" checked="" >
            Algérie
            </label>
            <div style="clear:both"></div>
            <label class="radio">
            <input type="radio" name="lieu_naissance" id="Etrange" value="ETRANGER">
            Etranger
            </label>
         </div>
      </div>
      <div class="form-group " id ="Wilaya_naissance">
         <label class="col-md-3 control-label"  > Wilaya de Naissance</label>
         <div class="col-md-3">
            <select name="wilaya_naissance" size="1" class="form-control">
               <option disabled selected value>choisir</option>
               <c:forEach var="wilaya" items="">
                  <option value=""> obtion</option>
               </c:forEach>
            </select>
         </div>
      </div>
      <div class="form-group " id="Acte_Naissance">
         <label class="col-md-3 control-label" for="input">Numéro d'acte de Naissance</label>
         <div class="col-md-3">
            <input type="text"  name="num_naissance" class="form-control" placeholder="- - - - -" maxlength="5">
         </div>
      </div>
      <div class="form-group">
         <label class="col-md-3 control-label" for="dt1">Date de Naissance</label>
         <div class="col-md-3">
            <input type="text" class="form-control datepicker date" id="dt1" placeholder="jj/mm/aaaa" name="date_naissance" >
         </div>
      </div>
      <div class="form-group">
         <label class="col-md-3 control-label" for="ccp">Compte CCP / Clé</label>
         <div class="col-md-3">
            <input type="text" class="form-control" id="ccp" name="ccp" placeholder="- - - - - - - - - - - " name="CompteCCP" maxlength="11">
      
         </div>
        <div class="col-md-1  control-label">/
                  </div>
         <div class="col-md-3">
              <input type="text" class="form-control" id="cle" name="cle" placeholder="- -" name="CleCCP"  maxlength="2" style="width:35%">
         </div>
      </div>
      <div class="form-group">
         <label class="col-md-3 control-label" >Diplomé ?</label>
         <div class="col-md-3">
            <label class="radio" class="form-control">
            <input type="radio" name="Diplomer" id="Oui" value="Oui">
            Oui
            </label>
            <div style="clear:both"></div>
            <label class="radio">
            <input type="radio" name="Diplomer" id="Non" value="Non">
            Non
            </label>
         </div>
      </div>
      <div class="form-group "id ="Diplome" style="display: none;" >
         <label class="col-md-3 control-label" > Diplome</label>
         <div class="col-md-3">
            <select name="diplome" size="1" class="form-control">
               <option disabled selected value >choisir</option>
               <c:forEach var="diplome" items="">
                  <option value=""> obtion</option>
               </c:forEach>
            </select>
         </div>
      </div>
      <div class="form-group " id ="Specialite" style="display: none;">
         <label class="col-md-3 control-label"  >Spécialité</label>
         <div class="col-md-3">
            <select name="specialite" size="1" class="form-control">
               <option disabled selected value>choisir</option>
               <c:forEach var="specialite" items="">
                  <option value=""> obtion </option>
               </c:forEach>
            </select>
         </div>
      </div>
      <div class="form-group " id="Niveau" style="display: none;">
         <label class="col-md-3 control-label"  > Niveau</label>
         <div class="col-md-3">
            <select name="niveau" size="1" class="form-control">
               <option disabled selected value>choisir</option>
               <option value="primaire">primaire</option>
               <option value="CEM">CEM</option>
               <option value="lycée">lycée</option>
               <option value="université">université</option>
            </select>
         </div>
      </div>
      <div class="form-group " id ="Annee" style="display: none;">
         <label class="col-md-3 control-label"  > Année</label>
         <div class="col-md-3">
            <select name="annee" size="1" class="form-control">
               <option disabled selected value>choisir</option>
               <option value="1">1</option>
               <option value="2">2</option>
               <option value="3">3</option>
               <option value="4">4</option>
               <option value="5">5</option>
               <option value="6">6</option>
               <option value="7">7</option>
               <option value="8">8</option>
               <option value="9">9</option>
               <option value="10">10</option>
            </select>
         </div>
      </div>
      <div class="form-group">
         <label class="col-md-3 control-label">Type de contrat</label>
         <div class="col-md-3">
            <select name="type" size="1" class="form-control">
               <option  disabled selected value>choisir</option>
               <option value="CIP">CIP</option>
               <option value="CID">CID</option>
            </select>
         </div>
      </div>
      <div class="form-group" >
         <label class="col-md-3 control-label" for="date01">Date Début</label>
         <div class="col-md-3" >
            <input type="text" class="form-control  datepicker date" id="date01" placeholder="jj/mm/aaaa"  name="date_debut" onchange="DateCalc();" >
         </div>
      </div>
      <div class="form-group" >
         <label class="col-md-3 control-label" for="date02">Date Fin</label>
         <div class="col-md-3">
            <input type="text" class="form-control datepicker date" id="date02" placeholder="jj/mm/aaaa" name="date_fin" readonly="readonly">
         </div>
      </div>
      <div class="form-group">
         <label class="col-md-3 control-label">Fonction</label>
         <div class="col-md-3">
            <select name="fonction" size="1" class="form-control" >
               <option  disabled selected value>choisir</option>
               <c:forEach var="fonction" items="" >
                  <option value=""> obtion </option>
               </c:forEach>
            </select>
         </div>
      </div>
      <div class="form-group">
         <label class="col-md-3 control-label">Référence d'autorisation</label>
         <div class="col-md-3">
            <input type="text"  name="ref" class="form-control" placeholder="N° - - - - - / année">
         </div>
      </div>
      <div class="form-group">
         <label class="col-md-3 control-label">Date d'autorisation</label>
         <div class="col-md-3">
            <input type="text" class="form-control datepicker date" id="date03" placeholder="jj/mm/aaaa" name="date_autorisation" >
         </div>
      </div>
      <div class="form-group">
         <div class="col-md-6 col-md-offset-3">
            <button type="reset" class="btn btn-default">Annuler</button>
            <button type="submit" class="btn btn-primary">Valider</button>
         </div>
      </div>
   </form>
</div>
<!-- /.contact-form -->
