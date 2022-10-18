{include file="header.tpl"}

<form action='edit-umpire/{$id}'method="POST">
<div class="row">
    <div class="col">
  
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">arbitro</label>
            <input name="arbitro" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Asociacion</label>
            <input name="asociacion" type="text" class="form-control" id="exampleInputPassword1" value="">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Region</label>
            <input name="region" class="form-control" id="exampleFormControlTextarea1" rows="3" value=""></input>
        </div>
    </div>
   
    <button type="submit" class="btn btn-primary mb-5">Editar arbitro</button>
    </form>
  
    {include file="footer.tpl"}